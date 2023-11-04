import 'package:flutter/material.dart';
import 'package:wallet/router.dart';
import 'package:wallet/theme.dart';

void main() {
  runApp(const Wallet());
}

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wallet',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getThemeData(),
      routerConfig: router,
    );
  }
}
