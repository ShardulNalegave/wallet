import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/theme.dart';

class HomeView extends StatefulHookConsumerWidget {
  const HomeView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppTheme.secondaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      body: Column(
        children: [
          const SizedBox(height: 150.0),
          Material(
            borderRadius: BorderRadius.circular(15.0),
            elevation: 0.0,
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text("ABC"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
