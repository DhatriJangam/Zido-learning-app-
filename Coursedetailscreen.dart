import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  final String courseName;

  CourseDetailScreen({required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Course Description',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 10),
            Text(
              'Detailed content about the course will go here. This can be dynamically fetched from the backend.',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle enrollment or course interaction
              },
              child: Text('Enroll in Course'),
            ),
          ],
        ),
      ),
    );
  }
}
