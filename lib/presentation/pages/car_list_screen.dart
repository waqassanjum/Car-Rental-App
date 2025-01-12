import 'package:carrentalapp/presentation/bloc/car_bloc.dart';
import 'package:carrentalapp/presentation/bloc/car_state.dart';
import 'package:carrentalapp/presentation/car_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListScreen extends StatelessWidget {
  const CarListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Choose Your Car')),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: BlocBuilder<CarBloc, CarState>(
        builder: (context, state) {
          print(state);
          if (state is CarsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is CarsLoaded) {
            print(state.cars.length);
            if (state.cars.isEmpty) {
              return const Text('No cars available');
            }
            return ListView.builder(
              itemCount: state.cars.length,
              itemBuilder: (context, index) {
                return CarCard(car: state.cars[index]);
              },
            );
          } else if (state is CarsError) {
            return Center(
              child: Text('Error : ${state.message}'),
            );
          }
          return Container();
        },
      ),
    );
  }
}
