import 'package:flutter/material.dart';
import 'package:salevy_frontend/ui/widgets/app_bar.dart';
import 'package:salevy_frontend/ui/widgets/query_form.dart';

class QueryFormRoute extends StatelessWidget {
  const QueryFormRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SalevyAppBar(
        title: "Salevy",
      ),
      body: Center(
        child: SizedBox(
          width: 1024,
          child: QueryFormWidget(),
        ),
      ),
    );
  }
}
