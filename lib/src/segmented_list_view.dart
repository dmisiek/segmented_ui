import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';
import 'package:segmented_ui/src/common/segment_renderer.dart';

class SegmentedListView extends StatelessWidget {
  const SegmentedListView({
    required this.itemBuilder,
    required this.itemCount,
    this.crossAxisMargin = 4.0,
    this.spacing = 0.0,
    this.theme,
    super.key,
  });

  final IndexedWidgetBuilder itemBuilder;
  final int itemCount;
  final double crossAxisMargin;
  final double spacing;
  final SegmentedUIThemeData? theme;

  @override
  Widget build(BuildContext context) {
    var theme = SegmentedUIThemeData.defaultOf(context);
    if (this.theme != null) {
      theme = theme.merge(this.theme!);
    }

    return ListView.separated(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return SegmentRenderer(
          theme: theme,
          childrenCount: itemCount,
          childEdgeMargin: crossAxisMargin,
          childIndex: index,
          child: itemBuilder(context, index),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: spacing);
      },
      // TODO: share remaining ListView params
    );
  }
}
