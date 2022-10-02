import 'package:salevy_frontend/livedata/livedata.dart';
import 'package:flutter/material.dart';

class ThemeViewModel {
  final _theme = MutableLiveData<ThemeMode>(currentValue: ThemeMode.light);

  MutableLiveData get theme => _theme;

  static final instance = ThemeViewModel._();

  ThemeViewModel._();

  factory ThemeViewModel() {
    return instance;
  }
}
