// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taggira/core/theme/app_colors.dart';
import 'package:taggira/core/utils/helper/app_constance.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hint;
  final String? label;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool? ignorePointers;
  final void Function()? onTap;
  final String? Function(String? text) validator;
  final TextInputType keyboardType;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final AutovalidateMode? autovalidateMode;
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLines;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
    this.suffixIcon,
    this.prefixIcon,
    this.ignorePointers,
    this.onTap,
    this.keyboardType = TextInputType.text,
    this.focusNode,
    this.textInputAction,
    this.autovalidateMode = AutovalidateMode.onUserInteraction,
    this.label,
    this.inputFormatters,
    this.maxLines = 1,
  });
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;
  // ignore: unused_field
  bool _hasFocus = false;
  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    // Use mounted check for safety if listener isn't removed properly
    if (mounted) {
      setState(() {
        _hasFocus = _focusNode.hasFocus;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      focusNode: _focusNode,
      textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      autovalidateMode: widget.autovalidateMode,
      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      maxLines: widget.maxLines,
      inputFormatters: widget.inputFormatters,
      decoration: InputDecoration(
        hintText: widget.hint ?? "empty",
        labelText: widget.label,
        labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: _focusNode.hasFocus ? AppColors.primary : AppColors.gray,
          fontSize:
              _focusNode.hasFocus
                  ? Theme.of(context).textTheme.bodyLarge!.fontSize
                  : Theme.of(context).textTheme.bodyMedium!.fontSize,
        ),
        suffixIcon: widget.suffixIcon,
        prefixIcon: widget.prefixIcon,
        contentPadding: AppConstance.customFormFieldPadding,
        helperMaxLines: 10,
      ),
      ignorePointers: widget.ignorePointers,
      onTap: widget.onTap,
      onTapOutside: (event) {
        widget.focusNode?.unfocus();
      },
      validator: widget.validator,
    );
  }
}
