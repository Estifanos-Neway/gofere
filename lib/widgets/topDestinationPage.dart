import 'package:flutter/material.dart';
import 'package:gofere_travels/data/top_destinations.dart';
import 'package:gofere_travels/widgets/topDestinationContainer.dart';

class TopDestinationPage extends StatefulWidget {
  const TopDestinationPage({Key? key}) : super(key: key);

  @override
  State<TopDestinationPage> createState() => _TopDestinationPageState();
}

class _TopDestinationPageState extends State<TopDestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Container(
              child: Text(
                "Top destinations",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Take memories, leave footprints, and plan your next trip with gofere travels.",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
              itemCount: topDestinations.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Map<String, dynamic> topDestination = topDestinations[index];
                return TopDestinationContainer(
                  context,
                  topDestination["name"],
                  "${topDestination["tourCount"]} Tours",
                  "${topDestination["hotelCount"]} Hotels",
                  "${topDestination["carRentalCount"]} Cars",
                  "${topDestination["rentalCount"]} Rentals",
                  topDestination["imageUrl"],
                );
              }),
        ],
      ),
    );
  }
}
