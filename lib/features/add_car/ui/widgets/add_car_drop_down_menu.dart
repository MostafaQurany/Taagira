import 'package:flutter/material.dart';

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
        // Uses theme decoration automatically now
        labelText: widget.label,
        // labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(color: AppColors.gray), // Can override if needed
      ),
      items:
          widget.items.map((T item) {
            return DropdownMenuItem<T>(
              value: item,
              // Simple display using enum name, capitalize first letter
              child: Text(item.name[0].toUpperCase() + item.name.substring(1)),
              // Or use your extension if you have one: child: Text(item.displayName),
            );
          }).toList(),
      onChanged: widget.onChanged,
      validator: widget.validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}
