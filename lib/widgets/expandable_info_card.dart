import 'package:flutter/material.dart';

class ExpandableInfoCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget content;
  final bool initiallyExpanded;

  const ExpandableInfoCard({
    super.key,
    required this.title,
    required this.icon,
    required this.content,
    this.initiallyExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: Icon(icon),
        initiallyExpanded: initiallyExpanded,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: content,
          ),
        ],
      ),
    );
  }
}

