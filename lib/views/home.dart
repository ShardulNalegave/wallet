import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/components/tabs.dart';
import 'package:wallet/theme.dart';
import 'package:wallet/views/home/analytics.dart';
import 'package:wallet/views/home/transactions.dart';

enum HomeViewTabs {
  transactions,
  analytics,
}

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedTab = useState(HomeViewTabs.transactions);

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
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Material(
              color: AppTheme.primaryDark,
              borderRadius: BorderRadius.circular(15.0),
              elevation: 0.0,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 75.0),
                    Text(
                      'Available Balance',
                      style: AppTheme.headingFont.copyWith(
                        fontSize: 20.0,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '₹',
                          style: AppTheme.moneyTextFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          '4820',
                          style: AppTheme.moneyTextFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '.53',
                          style: AppTheme.moneyTextFont.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: 15.0),
              Expanded(
                child: TextButton.icon(
                  icon: const Icon(FontAwesomeIcons.arrowDown),
                  label: const Text('Income'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      const Color(0xFF3F51B5),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFF3F51B5).withOpacity(0.1),
                    ),
                    overlayColor: MaterialStateProperty.all(
                      const Color(0xFF3F51B5).withOpacity(0.05),
                    ),
                  ),
                  onPressed: () =>
                      Navigator.of(context).pushNamed('/addIncome'),
                ),
              ),
              const SizedBox(width: 15.0),
              Expanded(
                child: TextButton.icon(
                  icon: const Icon(FontAwesomeIcons.arrowUp),
                  label: const Text('Expense'),
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(
                      const Color(0xFFE53935),
                    ),
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xFFE53935).withOpacity(0.1),
                    ),
                    overlayColor: MaterialStateProperty.all(
                      const Color(0xFFE53935).withOpacity(0.05),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
              const SizedBox(width: 15.0),
            ],
          ),
          Expanded(
            child: switch (selectedTab.value) {
              HomeViewTabs.transactions => const HomeViewTransactionsTab(),
              HomeViewTabs.analytics => const HomeViewAnalyticsTab(),
            },
          ),
          BottomTabBar(
            children: [
              BottomTab(
                label: 'Transactions',
                icon: FontAwesomeIcons.list,
                selected: selectedTab.value == HomeViewTabs.transactions,
                onTap: () => selectedTab.value = HomeViewTabs.transactions,
              ),
              BottomTab(
                label: 'Analytics',
                icon: FontAwesomeIcons.chartLine,
                selected: selectedTab.value == HomeViewTabs.analytics,
                onTap: () => selectedTab.value = HomeViewTabs.analytics,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
