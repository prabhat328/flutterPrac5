import 'package:flutter/material.dart';
import 'package:flutter_prac5/widgets/expandable_info_card.dart';

class VisionMissionSection extends StatelessWidget {
  const VisionMissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ExpandableInfoCard(
            title: 'Vision',
            icon: Icons.visibility,
            initiallyExpanded: true,
            content: const Text(
              'To develop globally competent and ethical professionals in Computer Science and Engineering and enable them to contribute to society.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(height: 16),
          ExpandableInfoCard(
            title: 'Mission',
            icon: Icons.rocket_launch,
            initiallyExpanded: true,
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '• To provide rigorous, high-standard, multidisciplinary curriculum and innovative T-L-E-A processes and ensure a stimulating academic environment.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '• To promote research and innovations through collaborations.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '• To develop requisite attitudes and skills, besides providing a strong knowledge foundation.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  '• To foster ethics and social responsibility among stakeholders and imbibe a sense of contribution.',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
