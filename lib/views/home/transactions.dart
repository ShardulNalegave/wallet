import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:wallet/theme.dart';

class HomeViewTransactionsTab extends HookConsumerWidget {
  const HomeViewTransactionsTab({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = useState(DateTime.now());

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '${selectedDate.value.day}/${selectedDate.value.month}/${selectedDate.value.year}',
                style: AppTheme.monospaceFont.copyWith(
                  fontSize: 20.0,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
              const Spacer(),
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: selectedDate.value,
                    firstDate: DateTime(2021),
                    lastDate: DateTime.now(),
                  );
                  if (date != null) selectedDate.value = date;
                },
                icon: const Icon(FontAwesomeIcons.calendar),
              )
            ],
          ),
        ),
      ],
    );
  }
}
