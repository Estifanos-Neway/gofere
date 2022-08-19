import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofere_travels/data/hotels.dart';
import 'package:gofere_travels/widgets/hotel_vertical_container.dart';
import 'package:gofere_travels/widgets/hotels_container.dart';
import 'package:gofere_travels/widgets/tours_container.dart';
import 'package:gofere_travels/widgets/recommendedTourContainer.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Hotels",
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "${hotels.length} hotels found",
                            style: TextStyle(fontSize: 15, color: Colors
                                .black45),
                          ),
                        ],
                      ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // GridView.builder(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //       childAspectRatio: (180 / 320),
                  //     ),
                  //     itemCount: hotels.length,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //     itemBuilder: (context, index) {
                  //       Map<String, dynamic> hotel = hotels[index];
                  //       return Container(
                  //         child: HotelsContainer(
                  //             context,
                  //             hotel["name"],
                  //             hotel["imageUrl"],
                  //             hotel["location"],
                  //             hotel["starCount"],
                  //             hotel["reviewCount"],
                  //             hotel["price"],
                  //             hotel["ratingTag"],),
                  //       );
                  //     }),
                  ListView.builder(
                      itemCount: hotels.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> hotel = hotels[index];
                        return Column(
                          children: [
                            Container(
                                child: HotelVerticalContainer(
                                  context,
                                  hotel["name"],
                                  hotel["imageUrl"],
                                  hotel["location"],
                                  hotel["starCount"],
                                  hotel["reviewCount"],
                                  hotel["price"],
                                  hotel["ratingTag"],
                                )),
                            // Divider(color: Colors.black,)
                          ],
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
