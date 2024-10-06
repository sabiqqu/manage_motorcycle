import 'package:flutter/material.dart';

class AddMotorcyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Motorcycle'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(decoration: InputDecoration(labelText: 'Brand')),
            TextField(decoration: InputDecoration(labelText: 'Model')),
            TextField(decoration: InputDecoration(labelText: 'Year')),
            TextField(decoration: InputDecoration(labelText: 'Rental Price')),
            ElevatedButton(
              child: Text('Save'),
              onPressed: () {
                // Implement save logic
              },
            ),
          ],
        ),
      ),
    );
  }
}
