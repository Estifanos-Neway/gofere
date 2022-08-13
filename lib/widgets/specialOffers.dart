import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofere_travels/widgets/special_offer_container.dart';
import 'package:gofere_travels/data/special_offers.dart';

class SpecialOffers extends StatefulWidget {
  const SpecialOffers({Key? key}) : super(key: key);

  @override
  State<SpecialOffers> createState() => _SpecialOffersState();
}

class _SpecialOffersState extends State<SpecialOffers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 135,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                "Special Offers",
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
          CarouselSlider.builder(
              itemCount: specialOffers.length,
              itemBuilder: (context, index, realIndex) {
                return SpecialOfferContainer(
                  context,
                  specialOffers[index]["text2"],
                  specialOffers[index]["text1"],
                  specialOffers[index]["imageUrl"],
                  specialOffers[index]["text3"],
                );
              },
              options: CarouselOptions(
                  height: 400,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2))),
        ],
      ),
    );
  }
}
