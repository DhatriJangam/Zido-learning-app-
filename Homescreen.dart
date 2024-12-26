import 'package:flutter/material.dart';
import 'package:zidio_learning_app/widgets/category_tile.dart';

class HomeScreen extends StatelessWidget {
  final List<String> categories = ['Technology', 'Business', 'Creative'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Zidio Learning'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Courses',
              style: Theme.of(context).textTheme.headline6,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryTile(categoryName: categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
