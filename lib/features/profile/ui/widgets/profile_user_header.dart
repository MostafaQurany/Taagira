import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_imges.dart';
import 'package:taggira/core/utils/helper/extension.dart';
import 'package:taggira/features/user/cubit/user_cubit.dart';
import 'package:taggira/features/user/model/user_model.dart';

class ProfileUserHeader extends StatefulWidget {
  const ProfileUserHeader({super.key});

  @override
  State<ProfileUserHeader> createState() => _ProfileUserHeaderState();
}

class _ProfileUserHeaderState extends State<ProfileUserHeader> {
  late UserModel user;
  @override
  void initState() {
    user = context.read<UserCubit>().user!;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage:
              user.imageUrl.isNullOrEmpty
                  ? AssetImage(AppImges.personImagePlaceholder)
                  : NetworkImage(user.imageUrl!),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              user.name.isNullOrEmpty ? user.phone : user.name!,
              style: Theme.of(
                context,
              ).textTheme.headlineMedium!.copyWith(color: AppColors.primary),
            ),
            if (!user.name.isNullOrEmpty) ...[
              const SizedBox(height: 4),
              Text(
                user.phone,
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: AppColors.gray),
              ),
            ],
            // const SizedBox(height: 4),
            // const Text(
            //   "76493 Church Close, Port Yolanda",
            //   style: TextStyle(fontSize: 12, color: Colors.grey),
            // ),
          ],
        ),
      ],
    );
  }
}
