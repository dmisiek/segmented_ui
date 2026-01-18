import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';
import 'package:segmented_ui/src/common/segment_scope.dart';

class SegmentRenderer extends StatelessWidget {
  const SegmentRenderer({
    required this.childEdgeMargin,
    required this.childIndex,
    required this.childrenCount,
    required this.child,
    required this.theme,
    super.key,
  });

  final double childEdgeMargin;
  final int childIndex;
  final int childrenCount;
  final Widget child;
  final SegmentedUIThemeData theme;

  @override
  Widget build(BuildContext context) {
    final isFirst = childIndex == 0;
    final isLast = childIndex == childrenCount - 1;

    final borderRadius = BorderRadius.vertical(
      top: isFirst ? theme.trailingCardRadius! : theme.cardRadius!,
      bottom: isLast ? theme.trailingCardRadius! : theme.cardRadius!,
    );
    final cardColor = theme.cardColor!;

    final segmentMargin = child is SegmentMargin
        ? child as SegmentMargin
        : null;

    return Padding(
      padding:
          segmentMargin?.margin ??
          EdgeInsets.symmetric(horizontal: childEdgeMargin),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: cardColor,
        ),
        child: Align(
          alignment: Alignment.topLeft,
          child: SegmentScope(
            borderRadius: borderRadius,
            color: cardColor,
            child: segmentMargin?.child ?? child,
          ),
        ),
      ),
    );
  }
}
