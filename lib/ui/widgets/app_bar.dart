import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/viewmodel/viewmodel.dart';
import 'package:simple_animated_icon/simple_animated_icon.dart';

// import '../favorites_page.dart';

class SalevyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final viewModel = SalevyViewModel();
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
        /*Padding(
          padding: const EdgeInsets.all(32.0),
          child: IconButton(
            onPressed: () {
              var controller = showBottomSheet(
                  elevation: 32,
                  context: context,
                  builder: (context) => Padding(
                        padding: const EdgeInsets.only(top: 32.0),
                        child: FavoritesRoute(),
                      ));

              
            },
            icon: const Icon(
              Icons.favorite_outline,
              color: Colors.red,
            ),
          ),
        )*/
      ],
    );
  }
}
