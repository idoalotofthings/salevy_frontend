import 'package:salevy_frontend/livedata/livedata.dart';
import 'package:flutter/material.dart';

// View Model class for allowing other widgets to change the theme of the application
// @SuppressUnsafe()
class ThemeViewModel {
  final _theme = MutableLiveData<ThemeMode>(currentValue: ThemeMode.light);

  MutableLiveData get theme => _theme;

  static final instance = ThemeViewModel._();

  ThemeViewModel._();

  factory ThemeViewModel() {
    return instance;
  }
}
