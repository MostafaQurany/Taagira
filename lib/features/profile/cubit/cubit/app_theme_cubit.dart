import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class AppThemeCubit extends HydratedCubit<ThemeMode> {
  AppThemeCubit() : super(ThemeMode.system);

  void toggleTheme() {
    emit(state == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }

  @override
  ThemeMode fromJson(Map<String, dynamic> json) {
    final theme = json['theme'] as String?;
    return theme == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  @override
  Map<String, dynamic> toJson(ThemeMode state) {
    return {'theme': state == ThemeMode.dark ? 'dark' : 'light'};
  }
}
