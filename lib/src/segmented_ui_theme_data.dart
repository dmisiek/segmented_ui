import 'package:flutter/material.dart';

class SegmentedUIThemeData {
  const SegmentedUIThemeData({
    required this.cardColor,
    required this.cardRound,
    required this.trailingCardRound,
  });

  final Color? cardColor;
  final BorderRadius? cardRound;
  final BorderRadius? trailingCardRound;
}
