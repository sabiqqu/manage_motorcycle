import 'package:flutter/material.dart';
import '../models/motorcycle.dart';

class MotorcycleDetailPage extends StatelessWidget {
  final Motorcycle motorcycle;

  MotorcycleDetailPage({required this.motorcycle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(motorcycle.model),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(motorcycle.imageUrl),
            Text('${motorcycle.brand} ${motorcycle.model} ${motorcycle.year}'),
            Text('Rental Price: Rp ${motorcycle.rentalPrice}/day'),
          ],
        ),
      ),
    );
  }
}
