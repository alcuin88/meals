import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:meals/provider/filters_provider.dart';

class FilterItem extends ConsumerWidget {
  const FilterItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.filter,
  });

  final String title;
  final String subtitle;
  final Filter filter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ThemeData theme = Theme.of(context);
    final activeStatus = ref.watch(filtersProvider);

    return SwitchListTile(
      value: activeStatus[filter]!,
      onChanged: (isChecked) {
        ref.read(filtersProvider.notifier).setFilter(filter, isChecked);
      },
      title: Text(
        title,
        style: theme.textTheme.titleLarge!.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: theme.textTheme.labelMedium!.copyWith(
          color: theme.colorScheme.onBackground,
        ),
      ),
      activeColor: theme.colorScheme.tertiary,
      contentPadding: const EdgeInsets.only(left: 34, right: 22),
    );
  }
}
