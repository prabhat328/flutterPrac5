import 'package:flutter/material.dart';
import 'package:flutter_prac5/models/faculty.dart';
import 'package:flutter_prac5/widgets/faculty_card.dart';

class FacultySection extends StatelessWidget {
  const FacultySection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: Faculty.sampleFacultyList.length,
      itemBuilder: (context, index) {
        return FacultyCard(faculty: Faculty.sampleFacultyList[index]);
      },
    );
  }
}
