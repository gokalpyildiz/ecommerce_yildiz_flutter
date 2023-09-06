// ignore_for_file: always_use_package_imports

import 'package:ecommerce_yildiz_flutter/product/initialize/app_dependency_injection.dart';
import 'package:flutter/material.dart';

import 'product/constants/string_constants.dart';
import 'product/initialize/app_builder.dart';
import 'product/initialize/app_theme.dart';
import 'product/initialize/application_start.dart';
import 'product/navigator/app_router_handler.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) => AppBuilder(child).build(),
      title: StringConstants.appName,
      theme: AppTheme(context).theme,
      //routerConfig: AppDependencyInjection.instance.locator.,
      routerConfig:
          AppDependencyInjection.instance.locator<AppRouterHandler>().config(),
    );
  }
}
