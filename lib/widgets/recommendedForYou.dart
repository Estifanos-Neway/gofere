import 'package:flutter/material.dart';
import 'package:gofere_travels/data/tours.dart';
import 'package:gofere_travels/widgets/recommendedCarContainer.dart';
import 'package:gofere_travels/widgets/recommendedHotelContainer.dart';
import 'package:gofere_travels/widgets/recommendedTourContainer.dart';

import '../data/cars.dart';
import '../data/hotels.dart';

class RecommendedForYou extends StatefulWidget {
  const RecommendedForYou({Key? key}) : super(key: key);

  @override
  State<RecommendedForYou> createState() => _RecommendedForYouState();
}

class _RecommendedForYouState extends State<RecommendedForYou> {
  int current = 0;
  List<Widget> recommended = [
    ListView.builder(
      itemCount: tours.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Map<String, dynamic> tour = tours[index];
        return Container(
            width: 300,
            child: RecommendedTourContainer(
              context,
              tour["name"],
              tour["imageUrl"],
              tour["location"],
              tour["starCount"],
              tour["reviewCount"],
              tour["price"],
              tour["duration"],
            ));
      },
    ),
    ListView.builder(
      itemCount: hotels.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Map<String, dynamic> hotel = hotels[index];
        return Container(
            width: 300,
            child: RecommendedHotelsContainer(
              context,
              hotel["name"],
              hotel["imageUrl"],
              hotel["location"],
              hotel["starCount"],
              hotel["reviewCount"],
              hotel["price"],
              hotel["ratingTag"],
            ));
      },
    ),
    ListView.builder(
      itemCount: cars.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Map<String, dynamic> car = cars[index];
        return Container(
            width: 300,
            child: RecommendedCarContainer(
              context,
              car["name"],
              car["imageUrl"],
              car["category"],
              car["seats"],
              car["doors"],
              car["bagCapacity"],
              car["type"],
              car["price"],
              car["featured"],
              car["discount"],
            ));
      },
    ),
    ListView.builder(
      itemCount: hotels.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        Map<String, dynamic> hotel = hotels[index];
        return Container(
            width: 300,
            child: RecommendedHotelsContainer(
              context,
              hotel["name"],
              hotel["imageUrl"],
              hotel["location"],
              hotel["starCount"],
              hotel["reviewCount"],
              hotel["price"],
              hotel["ratingTag"],
            ));
      },
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Text(
                "Recommended for you",
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      current = 0;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: current == 0 ? Colors.blue : Colors.white,
                      onPrimary: current == 0 ? Colors.white : Colors.black87,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                        // side: BorderSide(color: Colors.black, width: 0.2)
                      )),
                  child: Text(
                    "Tour",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      current = 1;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: current == 1 ? Colors.blue : Colors.white,
                      onPrimary: current == 1 ? Colors.white : Colors.black87,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    "Hotel",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      current = 2;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: current == 2 ? Colors.blue : Colors.white,
                      onPrimary: current == 2 ? Colors.white : Colors.black87,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    "Car",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      current = 3;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      primary: current == 3 ? Colors.blue : Colors.white,
                      onPrimary: current == 3 ? Colors.white : Colors.black87,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  child: Text(
                    "Rental",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.only(left: 10, right: 10, bottom: 30),
              height: 400,
              child: recommended[current]),
        ],
      ),
    );
  }
}
