import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/theme.dart';

class AddIncomeView extends HookConsumerWidget {
  const AddIncomeView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppTheme.secondaryColor,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
    ));

    return Scaffold(
      backgroundColor: AppTheme.secondaryColor,
      appBar: AppBar(
        backgroundColor: AppTheme.secondaryColor,
        foregroundColor: Colors.white,
        title: const Text('Add Income'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: Text(
                  'Amount',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                hintText: '0.00',
                hintStyle: TextStyle(color: Colors.white.withOpacity(0.7)),
              ),
              keyboardType: TextInputType.number,
            ),
            const Spacer(),
            Material(
              color: AppTheme.incomeColor,
              borderRadius: BorderRadius.circular(20.0),
              elevation: 5.0,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Text('Add'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
