import 'package:flutter/material.dart';
import 'package:flutter_stacked_template/app/app.locator.dart';
import 'package:flutter_stacked_template/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  //ignore: await_only_futures
  await setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Stacked Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
