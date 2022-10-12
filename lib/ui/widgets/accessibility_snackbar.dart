import 'package:flutter/material.dart';

SnackBar accessibilitySnackbar(
    BuildContext context, String message, void Function() onNext,
    {String buttonText = "Next"}) {
  
  var snackbar = SnackBar(
    duration: const Duration(seconds: 10),
    content: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            children: [
              Text(message)
            ],
          ),
        ),

        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: onNext,
                child: Text(buttonText),
              )
            ],
          ),
        )
      ],
    ),
  );
  return snackbar;
}
