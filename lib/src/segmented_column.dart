import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:segmented_ui/src/segmented_ui_theme_data.dart';

class SegmentedColumn extends StatelessWidget {
  const SegmentedColumn({
    required this.children,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.crossAxisMargin = 12.0,
    this.spacing = 4.0,
    this.theme,
    super.key,
  });

  final List<Widget> children;
  final CrossAxisAlignment crossAxisAlignment;
  final double crossAxisMargin;
  final double spacing;
  final SegmentedUIThemeData? theme;

  @override
  Widget build(BuildContext context) {
    var theme = SegmentedUIThemeData.defaultOf(context);
    if (this.theme != null) {
      theme = theme.merge(this.theme!);
    }

    return Column(
      crossAxisAlignment: crossAxisAlignment,
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: children.mapIndexed((index, child) {
        final isFirst = index == 0;
        final isLast = index == children.length - 1;

        final borderRadius = BorderRadius.vertical(
          top: isFirst ? theme.trailingCardRadius! : theme.cardRadius!,
          bottom: isLast ? theme.trailingCardRadius! : theme.cardRadius!,
        );

        return Padding(
          padding: EdgeInsets.symmetric(horizontal: crossAxisMargin),
          child: Material(
            borderRadius: borderRadius,
            color: theme.cardColor,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: child,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
