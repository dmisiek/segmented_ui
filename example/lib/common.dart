import 'package:flutter/material.dart';
import 'package:segmented_ui/segmented_ui.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Text(text, style: TextTheme.of(context).titleMedium),
    );
  }
}

class SwitchTile extends StatelessWidget {
  const SwitchTile({
    required this.title,
    required this.value,
    required this.onChanged,
    this.isEnabled = true,
    super.key,
  });

  final Widget title;
  final bool value;
  final void Function(bool value) onChanged;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return SegmentBox(
      onPressed: isEnabled ? () => onChanged(!value) : null,
      color: isEnabled ? null : ColorScheme.of(context).surfaceContainerHighest,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: AnimatedOpacity(
          duration: const Duration(milliseconds: 200),
          opacity: isEnabled ? 1 : 0.5,
          child: Row(
            spacing: 16,
            children: [
              Expanded(child: title),
              Switch(value: value, onChanged: onChanged),
            ],
          ),
        ),
      ),
    );
  }
}
