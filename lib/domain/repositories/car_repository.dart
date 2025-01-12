import 'package:carrentalapp/data/data_models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
