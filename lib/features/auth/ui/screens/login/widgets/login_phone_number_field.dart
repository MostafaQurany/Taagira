import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/generated/l10n.dart';

class LoginPhoneNumberField extends StatelessWidget {
  const LoginPhoneNumberField({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().loginFormKey,
      child: IntlPhoneField(
        controller: context.read<AuthCubit>().phoneController,
        style: Theme.of(context).textTheme.bodyMedium,
        invalidNumberMessage: S.of(context).pleaseEnterValidNumber,
        decoration: InputDecoration(
          hintText: S.of(context).phoneNumber,
          hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
          border: Theme.of(context).inputDecorationTheme.border,
          enabledBorder: Theme.of(context).inputDecorationTheme.enabledBorder,
          focusedBorder: Theme.of(context).inputDecorationTheme.focusedBorder,
          counterStyle: Theme.of(context).inputDecorationTheme.counterStyle,
        ),
        initialCountryCode: 'EG',
        onChanged: (phone) {
          print("phone Number =  $phone");
        },
        onCountryChanged: (value) {
          context.read<AuthCubit>().country = value.dialCode;
        },
      ),
    );
  }
}
