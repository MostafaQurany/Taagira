import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/car/models/car_model.dart';
import 'package:taggira/features/car/repo/car_repo.dart';
import 'package:taggira/features/car/ui/widgets/carHome/car_card.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';

class FavoriteCarsScreen extends StatelessWidget {
  const FavoriteCarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorite Cars')),
      body: StreamBuilder<List<String>>(
        stream: context.read<CarCubit>().getStreamCarFavorites(
          userId: context.read<UserCubit>().user!.id,
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No favorite cars yet."));
          }

          final carIds = snapshot.data!;

          return GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 16,
              childAspectRatio: 0.8,
            ),
            itemCount: carIds.length,
            itemBuilder: (context, index) {
              final carId = carIds[index];
              return CarCard(
                isShow: true,
                carModel: context.read<CarCubit>().allCars.firstWhere(
                  (element) => element.id == carId,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
