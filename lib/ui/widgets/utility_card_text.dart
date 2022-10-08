import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/model/utility/utility.dart';
import '../../dev/ext/list_ext.dart';
import 'package:visibility_detector/visibility_detector.dart';

class UtilityCardText extends StatefulWidget {
  final Utility utility;
  final bool reverse;
  final int index;
  final Key visibilityKey;

  const UtilityCardText(this.utility,
      {required this.index, required this.visibilityKey, this.reverse = false, super.key});

  @override
  State<UtilityCardText> createState() => _UtilityCardTextState();
}

class _UtilityCardTextState extends State<UtilityCardText> {
  bool _animate = false;
  static bool _isStarted = true;
  bool _start = false;

  var opacity = 0;

  @override
  Widget build(BuildContext context) {
    if (_start) {
      if (_isStarted) {
        Future.delayed(Duration(milliseconds: widget.index * 100), () {
          setState(() {
            _animate = true;
            _isStarted = false;
          });
        });
      } else {
        _animate = true;
      }
    }

    return VisibilityDetector(
      key: widget.visibilityKey,
      onVisibilityChanged: (event) {
        setState(() {
          _start = true;
        });
      },
      child: AnimatedOpacity(
        opacity: _animate ? 1 : 0,
        curve: Curves.easeInOutQuart,
        duration: const Duration(milliseconds: 1000),
        child: AnimatedPadding(
          duration: const Duration(milliseconds: 1000),
          padding: _animate
              ? const EdgeInsets.all(4.0)
              : const EdgeInsets.only(top: 10),
          child: SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    height: 300,
                    width: 400,
                    child: Card(
                      elevation: 16,
                      child: widget.utility.image,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 64,
                ),
                Container(
                  height: 300,
                  width: 400,
                  alignment: Alignment.center,
                  child: Text(
                    widget.utility.description,
                    style: GoogleFonts.adventPro(fontSize: 32),
                  ),
                )
              ].reverseIfNeeded(widget.reverse) as List<Widget>,
            ),
          ),
        ),
      ),
    );
  }
}
