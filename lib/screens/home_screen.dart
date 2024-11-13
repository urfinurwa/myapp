import 'package:flutter/material.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> phones = [
    {"name": "iPhone 13", "brand": "Apple"},
    {"name": "Galaxy S21", "brand": "Samsung"},
    {"name": "Pixel 6", "brand": "Google"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Store'),
      ),
      body: ListView.builder(
        itemCount: phones.length,
        itemBuilder: (context, index) {
          final phone = phones[index];
          return Card(
            margin: EdgeInsets.all(8.0),
            child: ListTile(
              title: Text(phone['name']!),
              subtitle: Text(phone['brand']!),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(
                      name: phone['name']!,
                      brand: phone['brand']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
