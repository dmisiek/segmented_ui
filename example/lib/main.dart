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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: ListView(
        children: [
          SegmentedColumn(
            children: [
              Text('Some text', style: TextTheme.of(context).titleMedium),
              TextField(),
              SwitchListTile(
                title: Text('Some switch'),
                  value: true,
                  onChanged: (value) {}
              ),
            ],
          ),
        ],
      ),
    );
  }
}
