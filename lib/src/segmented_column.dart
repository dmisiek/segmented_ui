import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:segmented_ui/src/segmented_ui_theme_data.dart';

class SegmentedColumn extends StatelessWidget {
  const SegmentedColumn({
    required this.children,
    this.crossAxisMargin = 12.0,
    this.spacing = 4.0,
    this.theme,
    super.key,
  });

  final double crossAxisMargin;
  final double spacing;
  final List<Widget> children;
  final SegmentedUIThemeData? theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: spacing,
      mainAxisSize: MainAxisSize.min,
      children: children.mapIndexed((index, child) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: crossAxisMargin),
          child: child,
        );
      }).toList(),
    );
  }
}
