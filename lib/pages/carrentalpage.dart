import 'package:flutter/material.dart';

class CarRentalPage extends StatefulWidget {
  const CarRentalPage({Key? key}) : super(key: key);

  @override
  State<CarRentalPage> createState() => _CarRentalPageState();
}

class _CarRentalPageState extends State<CarRentalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Car Rental"),
      ),
    );
  }
}
