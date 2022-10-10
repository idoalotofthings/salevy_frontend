import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/viewmodel/theme_viewmodel.dart';
import 'package:simple_animated_icon/simple_animated_icon.dart';

class SalevyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final viewModel = ThemeViewModel();
  final String title;

  SalevyAppBar({required this.title, super.key});

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

  @override
  void initState() {
    super.initState();

    // Calls the build method while the animation is in progress
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000))
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
    return AppBar(
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          widget.title,
          style: GoogleFonts.passionsConflict(fontSize: 90),
          textAlign: TextAlign.center,
        ),
      ),
      toolbarHeight: 110,
      actions: [
        Padding(
            padding: const EdgeInsets.all(32.0),
            child: IconButton(
              onPressed: () {
                if (widget.viewModel.theme.value == ThemeMode.light) {
                  widget.viewModel.theme.value = ThemeMode.dark;
                  _animationController.forward();
                } else {
                  _animationController.reverse();
                  widget.viewModel.theme.value = ThemeMode.light;
                }
              },
              icon: SimpleAnimatedIcon(
                startIcon: Icons.sunny,
                endIcon: Icons.mode_night,
                progress: _progress,
              ),
            ))
      ],
    );
  }
}
