import 'package:carrentalapp/data/data_models/car.dart';
import 'package:carrentalapp/data/datasources/firebase_car_data_source.dart';
import 'package:carrentalapp/domain/repositories/car_repository.dart';

class CarRepositoryIml implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryIml(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
