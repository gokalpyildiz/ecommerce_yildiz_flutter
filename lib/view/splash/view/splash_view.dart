import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage<String>()
class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('sdfaf')),
      body: const Text('fdsfsdf'),
    );
  }
}
