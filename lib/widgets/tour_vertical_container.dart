import 'package:flutter/material.dart';
import 'package:gofere_travels/pages/tour_details_page.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

Widget TourVerticalContainer(
  BuildContext context,
  String name,
  String imageUrl,
  String location,
  double starCount,
  int reviewCount,
  String price,
  String duration,
) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 410,
    margin: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      // borderRadius: BorderRadius.all(Radius.circular(12)),
      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.grey,
      //     offset: Offset(0.0, 1.0), //(x,y)
      //     blurRadius: 2.0,
      //   ),
      // ],
    ),
    child: Stack(
      children: [
        Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TourDetailsPage(
                              name,
                              imageUrl,
                              location,
                              starCount,
                              reviewCount,
                            )));
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover),
                  // borderRadius: BorderRadius.vertical(top: Radius.circular(12))
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    // borderRadius: BorderRadius.vertical(top: Radius.circular(12))
                  ),
                  padding: EdgeInsets.only(top: 2, right: 2),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border_outlined,
                            size: 25,
                            color: Colors.white,
                          ))),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.black54,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        child: Text(
                          location,
                          maxLines: 2,
                          style: TextStyle(color: Colors.black54, fontSize: 15),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TourDetailsPage(
                                    name,
                                    imageUrl,
                                    location,
                                    starCount,
                                    reviewCount,
                                  )));
                    },
                    child: Container(
                      child: Text(
                        name,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orangeAccent,
                        size: 19,
                      ),
                      Text(" $starCount",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Text(
                        " ($reviewCount Reviews)",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "From ",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                          Text(
                            price,
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.black54,
                          ),
                          Text(
                            " $duration",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
        // Align(
        //   alignment: Alignment.centerRight,
        //   child:
        Container(
          margin: EdgeInsets.only(top: 15, left: 5),
          child: Icon(
            Icons.account_circle_rounded,
            size: 30,
            color: Colors.white,
          ),
        ),
        // ),
      ],
    ),
  );
}
