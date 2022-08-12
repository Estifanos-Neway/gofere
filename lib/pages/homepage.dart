import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofere_travels/data/top_destinations.dart';
import 'package:gofere_travels/widgets/homeFirst.dart';
import 'package:gofere_travels/widgets/recommendedTourContainer.dart';
import 'package:gofere_travels/widgets/recommendedForYou.dart';
import 'package:gofere_travels/widgets/specialOffers.dart';
import 'package:gofere_travels/widgets/special_offer_container.dart';
import 'package:gofere_travels/widgets/topDestinationContainer.dart';
import 'package:gofere_travels/widgets/topDestinationPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> locations = ["Addis Ababa", "Adama"];
  String? value;
  String checker = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeFirst(),
            SpecialOffers(),
            TopDestinationPage(),
            RecommendedForYou(),
          ],
        ),
      )
    );
  }

}
