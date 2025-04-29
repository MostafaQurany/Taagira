import 'package:flutter/material.dart';
import 'package:taggira/core/theme/app_colors.dart';

class AddCarDropDownMenu<T extends Enum> extends StatefulWidget {
  final String label;
  final T? value;
  final List<T> items;
  final ValueChanged<T?> onChanged;
  final String? Function(T?)? validator;
  const AddCarDropDownMenu({
    super.key,
    required this.label,
    this.value,
    required this.items,
    required this.onChanged,
    this.validator,
  });

  @override
  State<AddCarDropDownMenu<T>> createState() => _AddCarDropDownMenuState<T>();
}

class _AddCarDropDownMenuState<T extends Enum>
    extends State<AddCarDropDownMenu<T>> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      value: widget.value,
      decoration: InputDecoration(
        labelText: widget.label,
        labelStyle: Theme.of(
          context,
        ).textTheme.bodyMedium!.copyWith(color: AppColors.gray),
      ),
      items:
          widget.items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              child: Text(
                item.name[0].toUpperCase() + item.name.substring(1),
                style: Theme.of(
                  context,
                ).textTheme.headlineMedium!.copyWith(color: AppColors.primary),
              ),
            );
          }).toList(),
      onChanged: widget.onChanged,
      validator: widget.validator,
      dropdownColor: AppColors.darkerWhite,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
