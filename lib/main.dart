import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wallet/router.dart';
import 'package:wallet/theme.dart';

void main() {
  runApp(const ProviderScope(child: Wallet()));
}

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getThemeData(),
      routes: routes,
      initialRoute: '/',
    );
  }
}
