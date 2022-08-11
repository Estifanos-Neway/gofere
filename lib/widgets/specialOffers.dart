import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofere_travels/widgets/special_offer_container.dart';

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
              child: Text("Special Offers",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Text("Take memories, leave footprints, and plan your next trip with gofere travels.",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black38,
              ),
              textAlign: TextAlign.center,),
          ),
          SizedBox(height: 20,),
          CarouselSlider.builder(itemCount: 3, itemBuilder: (context, index, realIndex) {
            return SpecialOfferContainer(context, "Last Minute Deals", "Leave immediately with a discount", "images/hotel1.jpg", "Time to go");
          }, options: CarouselOptions(height: 400, autoPlay: true, autoPlayInterval: Duration(seconds: 2))),
        ],
      ),
    );
  }
}
