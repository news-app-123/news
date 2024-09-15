import 'package:flutter/material.dart';
import 'package:newsapp/pages/newspage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Intellicast',
      theme: ThemeData.dark(),
      home: Categ(),
    );
  }
}

class Categ extends StatelessWidget {
  final List<String> categories = [
    'Technology',
    'Science',
    'Business',
    'Health',
    'Sports',
    'Entertainment',
    'National',
    'Politics',
    'International',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Intellicast', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 120.0, 30.0, 30.0),
        child: Column(
          children: [
            Text(
              'Select your preferred news categories',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 8.0,
              runSpacing: 4.0,
              children: categories.map((category) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewsPage(category: category), 
                      ),
                    );
                  },
                  child: Chip(
                    backgroundColor: Color.fromARGB(255, 43, 42, 42),
                    label: Text(category, style: TextStyle(color: Colors.white)),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
