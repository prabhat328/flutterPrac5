import 'package:flutter/material.dart';
import 'package:flutter_prac5/models/faculty.dart';

class FacultyCard extends StatelessWidget {
  final Faculty faculty;

  const FacultyCard({super.key, required this.faculty});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(faculty.photo),
          radius: 25,
          onBackgroundImageError: (_, __) => const Icon(Icons.person),
        ),
        title: Text(
          faculty.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              faculty.designation,
              style: const TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
