import 'package:flutter/material.dart';

extension SnackbarUtilOnContext on BuildContext {
  void showSnackbar(SnackBar snackBar) {
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }

  void hideCurrentSnackbar() {
    ScaffoldMessenger.of(this).hideCurrentSnackBar();
  }
}
