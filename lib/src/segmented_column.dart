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
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: children.mapIndexed((index, child) {
        return Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.symmetric(horizontal: crossAxisMargin),
          padding: const EdgeInsets.all(16),
          color: ColorScheme.of(context).surfaceContainerHigh,
          child: child,
        );
      }).toList(),
    );
  }
}
