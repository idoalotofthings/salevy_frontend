import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salevy_frontend/data/utility_datasource.dart';
import 'package:salevy_frontend/ui/viewmodel/viewmodel.dart';
import 'package:salevy_frontend/ui/widgets/about_us_widget.dart';
import 'package:salevy_frontend/ui/widgets/app_bar.dart';
import 'package:salevy_frontend/ui/widgets/product_showcase_widget.dart';
import 'package:salevy_frontend/ui/widgets/utility_card_text.dart';

// Entrypoint webpage of the application.
class MainRoute extends StatefulWidget {
  final ThemeMode themeMode;

  const MainRoute({required this.themeMode, super.key});

  @override
  State<MainRoute> createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> with TickerProviderStateMixin {
  final viewModel = SalevyViewModel();
  late double screenWidth;

  @override
  Widget build(BuildContext context) {
    setState(() {
      screenWidth = MediaQuery.of(context).size.width;
    });

    return Scaffold(
        appBar: SalevyAppBar(
          title: "Salevy",
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 21.0),
                    child: Container(
                        height: 500,
                        width: screenWidth,
                        alignment: Alignment.topCenter,
                        child: const ProductShowcaseWidget())),
                Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Text(
                    "Sneakers for Everyone!",
                    style: GoogleFonts.passionsConflict(
                        fontSize: 64, fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: utilities.length,
                    itemBuilder: ((context, index) {
                      if (index == 1) {
                        return UtilityCardText(
                          utilities[index],
                          index: index,
                          reverse: true,
                          visibilityKey: Key("congrats-easter-egg$index"),
                        );
                      } else {
                        return UtilityCardText(
                          utilities[index],
                          index: index,
                          visibilityKey: Key("congrats-easter-egg$index"),
                        );
                      }
                    })),
                const Padding(
                  padding: EdgeInsets.only(top: 16.0),
                  child: AboutUsWidget(),
                )
              ],
            ),
          ),
        ));
  }
}
