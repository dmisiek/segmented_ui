import 'package:flutter/material.dart';

class SegmentedUIThemeData {
  const SegmentedUIThemeData({
    required this.cardColor,
    required this.cardRadius,
    required this.trailingCardRadius,
  });

  factory SegmentedUIThemeData.defaultOf(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    return SegmentedUIThemeData(
      cardColor: colorScheme.surfaceContainer,
      cardRadius: const Radius.circular(8),
      trailingCardRadius: const Radius.circular(20),
    );
  }

  final Color? cardColor;
  final Radius? cardRadius;
  final Radius? trailingCardRadius;

  SegmentedUIThemeData merge(SegmentedUIThemeData other) {
    return SegmentedUIThemeData(
      cardColor: other.cardColor ?? cardColor,
      cardRadius: other.cardRadius ?? cardRadius,
      trailingCardRadius: other.trailingCardRadius ?? trailingCardRadius,
    );
  }
}
