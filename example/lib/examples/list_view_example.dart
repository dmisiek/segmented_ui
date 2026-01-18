import 'dart:math';

import 'package:example/common.dart';
import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';

enum AvailableWidget { text, textField, toggle, segmented }

class ListViewExample extends StatefulWidget {
  const ListViewExample({super.key});

  @override
  State<ListViewExample> createState() => _ListViewExampleState();
}

class _ListViewExampleState extends State<ListViewExample> {
  late final List<AvailableWidget> items = List.generate(
    50,
    (index) => AvailableWidget.values.random,
  );

  @override
  Widget build(BuildContext context) {
    return SegmentedListView(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return switch (items[index]) {
          AvailableWidget.text => CardPadding(
            child: Text('Some extra text $index'),
          ),
          AvailableWidget.textField => CardPadding(
            child: TextField(
              decoration: InputDecoration(label: Text('Text field $index')),
            ),
          ),
          AvailableWidget.toggle => SwitchTile(
            title: Text('Switch tile no. $index'),
            value: index.isEven,
            onChanged: (value) {},
          ),
          AvailableWidget.segmented => CardPadding(
            child: SegmentedButton(
              segments: [
                ButtonSegment(value: true, label: Text("Option 1")),
                ButtonSegment(value: false, label: Text("Option 2")),
              ],
              selected: {true},
              onSelectionChanged: (_) {},
            ),
          ),
        };
      },
    );
  }
}

extension RandomListItem<T> on List<T> {
  T get random {
    if (this.isEmpty) {
      throw StateError('Cannot get random item from empty list');
    }
    return this[Random().nextInt(this.length)];
  }
}
