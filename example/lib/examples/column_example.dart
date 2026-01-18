import 'package:example/common.dart';
import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const SizedBox(height: 32),
        SectionTitle('Section 1'),
        SegmentedColumn(
          children: [
            CardPadding(
              child: Text(
                'Some text ',
                style: TextTheme.of(context).titleMedium,
              ),
            ),
            TextField(),
            SwitchTile(
              title: Text('Some switch'),
              value: true,
              onChanged: (_) {},
            ),
          ],
        ),
        const SizedBox(height: 32),
        SectionTitle('Section 2'),
        SegmentedColumn(
          spacing: 4,
          children: [
            SegmentMargin(
              margin: EdgeInsets.zero,
              child: SwitchTile(
                title: Text('Some switch A'),
                value: true,
                onChanged: (_) {},
              ),
            ),
            SwitchTile(
              title: Text('Some switch B'),
              value: true,
              onChanged: (_) {},
              isEnabled: false,
            ),
            SwitchTile(
              title: Text('Some switch C'),
              value: true,
              onChanged: (_) {},
            ),
            CardPadding(
              child: SegmentedButton(
                segments: [
                  ButtonSegment(value: true, label: Text("Option 1")),
                  ButtonSegment(value: false, label: Text("Option 2")),
                ],
                selected: {true},
                onSelectionChanged: (_) {},
              ),
            ),
          ],
        ),
      ],
    );
  }
}
