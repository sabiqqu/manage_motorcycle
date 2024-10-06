import 'package:flutter/material.dart';
import '../models/motorcycle.dart';
import '../pages/motorcycle_detail_page.dart';

class MotorcycleCard extends StatelessWidget {
  final Motorcycle motorcycle;

  MotorcycleCard({required this.motorcycle});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(motorcycle.imageUrl),
        title:
            Text('${motorcycle.brand} ${motorcycle.model} ${motorcycle.year}'),
        subtitle: Text('Rp ${motorcycle.rentalPrice}/day'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  MotorcycleDetailPage(motorcycle: motorcycle),
            ),
          );
        },
      ),
    );
  }
}
