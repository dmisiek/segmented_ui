import 'package:flutter/material.dart';

class SegmentMargin extends StatelessWidget {
  const SegmentMargin({
    required this.margin,
    required this.child,
    super.key,
  });

  final EdgeInsets margin;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: margin, child: child);
  }
}
