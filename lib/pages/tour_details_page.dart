import 'package:flutter/material.dart';

class TourDetailsPage extends StatefulWidget {
  const TourDetailsPage({Key? key}) : super(key: key);

  @override
  State<TourDetailsPage> createState() => _TourDetailsPageState();
}

class _TourDetailsPageState extends State<TourDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Tour Details"),
      ),
    );
  }
}
