import 'package:carrentalapp/data/data_models/car.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseCarDataSource {
  final FirebaseFirestore firestore;

  FirebaseCarDataSource({required this.firestore});

  Future<List<Car>> getCars() async {
    var snapshot = await firestore.collection('cars').get();
    // ignore: avoid_print
    print("Cars: ${snapshot.docs.length}");
    return snapshot.docs.map((doc) => Car.fromMap(doc.data())).toList();
  }
}
