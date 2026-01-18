import 'package:flutter/material.dart';

class SegmentScope extends InheritedWidget {
  const SegmentScope({
    required super.child,
    required this.borderRadius,
    required this.color,
    super.key,
  });

  final BorderRadius borderRadius;
  final Color color;

  static SegmentScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SegmentScope>();
  }

  static SegmentScope of(BuildContext context) {
    final result = maybeOf(context);
    assert(result != null, 'No SegmentScope found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(SegmentScope old) {
    return borderRadius != old.borderRadius || color != old.color;
  }
}
