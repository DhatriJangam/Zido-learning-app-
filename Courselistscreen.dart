import 'package:flutter/material.dart';

class CourseListScreen extends StatelessWidget {
  final String category;

  CourseListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    // Replace with dynamic data from Firebase or other sources
    final List<String> courses = [
      'Course 1',
      'Course 2',
      'Course 3',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('$category Courses'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(courses[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              // Navigate to course details
            },
          );
        },
      ),
    );
  }
}
