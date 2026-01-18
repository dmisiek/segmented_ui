import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';

class SegmentBox extends StatelessWidget {
  const SegmentBox({
    required this.child,
    this.color,
    this.onPressed,
    super.key,
  });

  final Color? color;
  final void Function()? onPressed;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final br = SegmentScope.maybeOf(context)?.borderRadius;
    final color = this.color ?? SegmentScope.maybeOf(context)?.color;

    if (onPressed == null) {
      return DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: br,
          color: color,
        ),
        child: child,
      );
    }

    return Material(
      color: color,
      borderRadius: br,
      child: InkWell(
        borderRadius: br,
        onTap: onPressed,
        child: child,
      ),
    );
  }
}
