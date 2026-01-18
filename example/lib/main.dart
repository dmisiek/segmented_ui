import 'package:example/common.dart';
import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SegmentedUI Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'SegmentedUI Demo'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView(
        children: [
          const SizedBox(height: 32),
          SectionTitle('Section 1'),
          SegmentedColumn(
            children: [
              Text('Some text ', style: TextTheme.of(context).titleMedium),
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
              Padding(
                padding: const EdgeInsets.all(16),
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
      ),
    );
  }
}


