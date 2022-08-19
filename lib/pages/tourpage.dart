import 'package:flutter/material.dart';
import 'package:gofere_travels/data/tours.dart';
import 'package:gofere_travels/widgets/recommendedTourContainer.dart';
import 'package:gofere_travels/widgets/tour_vertical_container.dart';
import 'package:gofere_travels/widgets/tours_container.dart';

class TourPage extends StatefulWidget {
  const TourPage({Key? key}) : super(key: key);

  @override
  State<TourPage> createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
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
                          "Tours",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "${tours.length} tours found",
                          style: TextStyle(fontSize: 15, color: Colors.black45),
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
                  //       childAspectRatio: (180 / 325),
                  //     ),
                  //     itemCount: tours.length,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //     itemBuilder: (context, index) {
                  //       Map<String, dynamic> tour = tours[index];
                  //       return Container(
                  //           child: ToursContainer(
                  //         context,
                  //         tour["name"],
                  //         tour["imageUrl"],
                  //         tour["location"],
                  //         tour["starCount"],
                  //         tour["reviewCount"],
                  //         tour["price"],
                  //         tour["duration"],
                  //       ));
                  //     }),
                  ListView.builder(
                      itemCount: tours.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> tour = tours[index];
                        return Column(
                          children: [
                            Container(
                                child: TourVerticalContainer(
                              context,
                              tour["name"],
                              tour["imageUrl"],
                              tour["location"],
                              tour["starCount"],
                              tour["reviewCount"],
                              tour["price"],
                              tour["duration"],
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
