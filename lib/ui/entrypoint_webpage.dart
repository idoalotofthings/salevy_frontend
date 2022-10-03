import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/ui/viewmodel/theme_viewmodel.dart';
import 'package:salevy_frontend/ui/widgets/product_showcase_widget.dart';
import 'package:simple_animated_icon/simple_animated_icon.dart';

// Entrypoint webpage of the application.
class MainRoute extends StatefulWidget {
  final ThemeMode themeMode;

  const MainRoute({required this.themeMode, super.key});

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> with TickerProviderStateMixin {
  final viewModel = ThemeViewModel();

  late AnimationController _animationController; // AnimationController for the theme icon
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
    _progress = Tween<double>(begin: 0, end: 10).animate(_animationController);

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Salevy",
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
                    if (viewModel.theme.value == ThemeMode.light) {
                      viewModel.theme.value = ThemeMode.dark;
                      _animationController.forward();
                    } else {
                      _animationController.reverse();
                      viewModel.theme.value = ThemeMode.light;
                    }
                  },
                  icon: SimpleAnimatedIcon(
                    startIcon: Icons.sunny,
                    endIcon: Icons.mode_night,
                    progress: _progress,
                  ),
                ))
          ],
        ),
        body: Container(
          height: 400,
          alignment: Alignment.topCenter,
          child: const SizedBox(width: 1150, child: ProductShowcaseWidget()),
        ));
  }
}
