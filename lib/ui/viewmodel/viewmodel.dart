import 'package:salevy_frontend/livedata/livedata.dart';
import 'package:flutter/material.dart';

// View Model class for allowing other widgets to change the theme of the application
// @SuppressUnsafe()
class SalevyViewModel {
  final _theme = MutableLiveData<ThemeMode>(currentValue: ThemeMode.light);

  LiveData get theme => _theme;

  static final instance = SalevyViewModel._();

  SalevyViewModel._();

  factory SalevyViewModel() {
    return instance;
  }

  void setThemeMode(ThemeMode mode) {
    _theme.value = mode;
  }
}
