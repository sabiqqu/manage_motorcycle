import 'package:flutter/material.dart';
import '../controllers/motorcycle_controller.dart';
import '../widgets/motorcycle_card.dart';

class MotorcycleListPage extends StatelessWidget {
  final MotorcycleController _controller = MotorcycleController();

  @override
  Widget build(BuildContext context) {
    final motorcycles = _controller.getMotorcycles();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Searching...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: ['All', 'Honda', 'Yamaha', 'Suzuki']
                .map((filter) => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Chip(label: Text(filter)),
                    ))
                .toList(),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: motorcycles.length,
            itemBuilder: (context, index) {
              return MotorcycleCard(motorcycle: motorcycles[index]);
            },
          ),
        ),
        ElevatedButton(
          child: Text('Add New Motorcycle'),
          onPressed: () {
            // Navigate to add motorcycle page
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(double.infinity, 50),
          ),
        ),
      ],
    );
  }
}