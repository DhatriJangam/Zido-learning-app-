import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final String categoryName;

  CategoryTile({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(categoryName),
        leading: Icon(Icons.category, color: Colors.blue),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Navigate to the category's course list
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseListScreen(category: categoryName),
            ),
          );
        },
      ),
    );
  }
}
