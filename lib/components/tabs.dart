import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/theme.dart';

class BottomTabBar extends StatefulHookConsumerWidget {
  final List<BottomTab> children;
  const BottomTabBar({
    super.key,
    required this.children,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends ConsumerState<BottomTabBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: AppTheme.secondaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (Widget child in widget.children) Expanded(child: child),
          ],
        ),
      ),
    );
  }
}

class BottomTab extends StatefulHookConsumerWidget {
  final String label;
  final IconData icon;
  final Function onTap;
  final bool selected;
  const BottomTab({
    super.key,
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _BottomTabState();
}

class _BottomTabState extends ConsumerState<BottomTab> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Material(
        color: AppTheme.secondaryColor,
        child: InkWell(
          highlightColor: Colors.transparent,
          splashColor: AppTheme.primaryDark.withOpacity(0.1),
          onTap: () => widget.onTap(),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Column(
                children: [
                  Icon(
                    widget.icon,
                    color: widget.selected
                        ? AppTheme.primaryLight.withOpacity(0.8)
                        : Colors.white,
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    widget.label,
                    style: AppTheme.monospaceFont.copyWith(
                      color: widget.selected
                          ? AppTheme.primaryLight.withOpacity(0.8)
                          : Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
