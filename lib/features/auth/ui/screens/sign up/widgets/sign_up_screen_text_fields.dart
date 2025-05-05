import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:taggira/core/utils/extensions/app_extensions.dart';
import 'package:taggira/core/widgets/custom_text_field.dart';
import 'package:taggira/features/auth/cubit/auth_cubit.dart';
import 'package:taggira/generated/l10n.dart';

class SignUpScreenTextFields extends StatefulWidget {
  const SignUpScreenTextFields({super.key});

  @override
  SignUpScreenTextFieldsState createState() => SignUpScreenTextFieldsState();
}

class SignUpScreenTextFieldsState extends State<SignUpScreenTextFields> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<AuthCubit>().globalKey,
      child: Column(
        children: [
          CustomTextField(
            controller: context.read<AuthCubit>().nameController,
            textInputAction: TextInputAction.next,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            hint: S.of(context).name,
            prefixIcon: const Icon(Icons.person_2),
            validator: (text) {
              if (text!.isEmpty || text.length < 3) {
                return S.of(context).enterTheValidName;
              }
              return null;
            },
          ),
          hSize(h: 20),
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: context.read<AuthCubit>().phnController,
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.phone,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  hint: S.of(context).phoneNumber,
                  prefixIcon: const Icon(Icons.phone),
                  validator: (text) {
                    if (text!.isEmpty || text.length < 11) {
                      return S.of(context).enterTheValidPhoneNumber;
                    }
                    return null;
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
