import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/features/car/cubit/car_cubit/car_cubit.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';

class FavoriteCarIcon extends StatefulWidget {
  bool isFavorite;
  String carId;
  FavoriteCarIcon({this.isFavorite = false, required this.carId, super.key});

  @override
  State<FavoriteCarIcon> createState() => _FavoriteCarIconState();
}

class _FavoriteCarIconState extends State<FavoriteCarIcon> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.isFavorite) {
          context.read<CarCubit>().removeFavorite(
            userId: context.read<UserCubit>().user!.id,
            carId: widget.carId,
          );
        } else {
          context.read<CarCubit>().addCarToFavorites(
            userId: context.read<UserCubit>().user!.id,
            carId: widget.carId,
          );
        }
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: Icon(
          widget.isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
          color: widget.isFavorite ? AppColors.orange : Colors.grey,
          size: 20.w,
          key: ValueKey<bool>(widget.isFavorite),
        ),
      ),
    );
  }
}
