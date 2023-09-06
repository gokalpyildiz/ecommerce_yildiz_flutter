// ignore_for_file: always_use_package_imports

import 'package:flutter/material.dart';

import 'product/initialize/application_start.dart';
import 'product/initialize/my_app.dart';

Future<void> main() async {
  await ApplicationStart.init();
  runApp(const MyApp());
}
