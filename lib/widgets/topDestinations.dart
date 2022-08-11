import 'package:flutter/material.dart';

class TopDestinations extends StatefulWidget {
  const TopDestinations({Key? key}) : super(key: key);

  @override
  State<TopDestinations> createState() => _TopDestinationsState();
}

class _TopDestinationsState extends State<TopDestinations> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 140,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Text("Top destinations",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
