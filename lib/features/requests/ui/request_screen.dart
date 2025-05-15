import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:taggira/core/di/di.dart';
import 'package:taggira/core/utils/helper/app_formater.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/repo/car_repo.dart';
import 'package:taggira/features/requests/cubit/cubit/request_cubit.dart';
import 'package:taggira/features/requests/models/request_model.dart';
import 'package:taggira/features/requests/ui/widgets/request_car_card.dart';

class RequestsScreen extends StatefulWidget {
  const RequestsScreen({super.key});

  @override
  State<RequestsScreen> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends State<RequestsScreen> {
  final String userId = FirebaseAuth.instance.currentUser!.uid;
  final ScrollController _scrollController = ScrollController();
  final Map<String, CarModel> _carCache = {};
  final CarRepo _carRepo = getIt<CarRepo>();

  RequestModelState selectedFilter = RequestModelState.all;
  int _itemsToDisplay = 10;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >=
              _scrollController.position.maxScrollExtent - 200 &&
          mounted) {
        setState(() {
          _itemsToDisplay += 10;
        });
      }
    });
  }

  Future<CarModel?> _loadCar(String carId) async {
    if (_carCache.containsKey(carId)) return _carCache[carId];
    try {
      final car = await _carRepo.getCarById(carId);
      _carCache[carId] = car;
      return car;
    } catch (_) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Requests"),
        actions: [
          PopupMenuButton<RequestModelState>(
            icon: const Icon(Icons.filter_list),
            onSelected: (state) => setState(() => selectedFilter = state),
            itemBuilder:
                (context) =>
                    RequestModelState.values
                        .map(
                          (e) => PopupMenuItem(
                            value: e,
                            child: Text(
                              e.name[0].toUpperCase() + e.name.substring(1),
                            ),
                          ),
                        )
                        .toList(),
          ),
        ],
      ),
      body: StreamBuilder<List<RequestModel>>(
        stream: context.read<RequestCubit>().getRequestModel(
          userId,
          selectedFilter,
        ),
        builder: (context, snapshot) {
          final requests = snapshot.data ?? [];

          if (snapshot.connectionState == ConnectionState.waiting) {
            return ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: 6,
              itemBuilder: (context, index) => _buildShimmerCard(),
            );
          }

          if (requests.isEmpty) {
            return const Center(child: Text("No requests found."));
          }

          final visible = requests.take(_itemsToDisplay).toList();

          // Group by formatted date
          final Map<String, List<RequestModel>> grouped = {};
          for (final req in visible) {
            final key = AppFormatter.formatTimeStamp(
              req.createdAt ?? Timestamp.now(),
            );
            grouped.putIfAbsent(key, () => []).add(req);
          }

          return ListView(
            controller: _scrollController,
            padding: const EdgeInsets.all(16),
            children:
                grouped.entries.expand((entry) {
                  return [
                    Text(
                      entry.key,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ...entry.value.map(_buildRequestItem),
                    const SizedBox(height: 16),
                  ];
                }).toList(),
          );
        },
      ),
    );
  }

  Widget _buildRequestItem(RequestModel request) {
    return FutureBuilder<CarModel?>(
      future: _loadCar(request.carId),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return _buildShimmerCard();
        }

        final car = snapshot.data!;
        return RequestCarCard(car: car, request: request);
      },
    );
  }

  Widget _buildShimmerCard() {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Colors.grey[300]!,
              highlightColor: Colors.grey[100]!,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(4, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: 12,
                        width: index == 0 ? 120 : double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
