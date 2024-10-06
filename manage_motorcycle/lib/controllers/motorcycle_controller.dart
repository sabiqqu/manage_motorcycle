import '../models/motorcycle.dart';

class MotorcycleController {
  List<Motorcycle> getMotorcycles() {
    // Simulasi data, ganti dengan panggilan API atau database sebenarnya
    return [
      Motorcycle(
          id: '1',
          brand: 'Honda',
          model: 'PCX',
          year: 2024,
          rentalPrice: 150000,
          imageUrl: 'https://example.com/pcx.jpg'),
      Motorcycle(
          id: '2',
          brand: 'Yamaha',
          model: 'Nmax',
          year: 2024,
          rentalPrice: 150000,
          imageUrl: 'https://example.com/nmax.jpg'),
      // Tambahkan motor lainnya
    ];
  }
}
