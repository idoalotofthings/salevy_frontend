import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/viewmodel/viewmodel.dart';
import 'package:simple_animated_icon/simple_animated_icon.dart';

class SalevyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final viewModel = SalevyViewModel();

  final bool iconOnLeft;
  final String title;

  SalevyAppBar({this.iconOnLeft = false, required this.title, super.key});

  @override
  State<SalevyAppBar> createState() => _SalevyAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(110);
}

class _SalevyAppBarState extends State<SalevyAppBar>
    with TickerProviderStateMixin {
  late AnimationController
      _animationController; // AnimationController for the theme icon
  late Animation<double> _progress;

  final viewModel = SalevyViewModel();

  Color _logoTint = Colors.brown;

  @override
  void initState() {
    super.initState();

    // Calls the build method while the animation is in progress
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500))
      ..addListener(() {
        setState(() {});
      });

    _progress = Tween<double>(begin: 0, end: 1).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late Row appBarContents;
    if (viewModel.theme.value == ThemeMode.dark) {
      setState(() {
        _logoTint = Colors.white;
      });
    } else {
      _logoTint = Colors.brown;
    }

    if (widget.iconOnLeft) {
      appBarContents = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 120,
            width: 200,
            color: _logoTint,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    widget.title,
                    style: GoogleFonts.passionsConflict(fontSize: 90),
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      appBarContents = Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 120,
            width: 200,
            color: _logoTint,
          ),
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: Text(
              widget.title,
              style: GoogleFonts.passionsConflict(fontSize: 90),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      );
    }

    return AppBar(
      centerTitle: true,
      title: appBarContents,
      toolbarHeight: 110,
      actions: [
        Tooltip(
          message: "Switch Theme",
          child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: IconButton(
                onPressed: () {
                  if (widget.viewModel.theme.value == ThemeMode.light) {
                    widget.viewModel.setThemeMode(ThemeMode.dark);
                    _animationController.forward();
                  } else {
                    _animationController.reverse();
                    widget.viewModel.setThemeMode(ThemeMode.light);
                  }
                },
                icon: SimpleAnimatedIcon(
                  startIcon: Icons.sunny,
                  endIcon: Icons.mode_night,
                  progress: _progress,
                ),
              )),
        ),
      ],
    );
  }
}
