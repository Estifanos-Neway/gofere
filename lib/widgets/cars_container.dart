import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/mdi.dart';

Widget CarsContainer(
  BuildContext context,
  String name,
  String imageUrl,
  String category,
  int seats,
  int doors,
  int bagCapacity,
  String type,
  String price,
  bool featured,
  String discount,
) {
  return Container(
    width: 180,
    margin: EdgeInsets.fromLTRB(10, 0, 10, 20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(12)),
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 1.0), //(x,y)
          blurRadius: 2.0,
        ),
      ],
    ),
    child: Stack(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 125,
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imageUrl), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(12)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(12)),
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
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        category,
                        style: TextStyle(color: Colors.black54, fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Iconify(
                              Uil.users_alt,
                              size: 12,
                              color: Colors.black54,
                            ),
                          ),
                          Text("$seats")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Iconify(
                              Tabler.manual_gearbox,
                              size: 12,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            type,
                            style: TextStyle(fontSize: 10),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Iconify(
                              Mdi.bag_suitcase_outline,
                              size: 12,
                              color: Colors.black54,
                            ),
                          ),
                          Text("$bagCapacity")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(color: Colors.black54),
                            ),
                            child: Iconify(
                              Mdi.car_door,
                              size: 12,
                              color: Colors.black54,
                            ),
                          ),
                          Text("$doors")
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "$price ",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "/ day",
                            style:
                                TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(bottom: 75, right: 15),
            child: Icon(
              Icons.account_circle_rounded,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              featured
                  ? Container(
                      padding: EdgeInsets.all(5),
                      margin: EdgeInsets.only(top: 15, left: 15, bottom: 5),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        "Featured",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            fontSize: 10),
                      ),
                    )
                  : SizedBox(),
              Container(
                padding: EdgeInsets.all(5),
                margin: featured
                    ? EdgeInsets.all(0)
                    : EdgeInsets.only(top: 15, left: 15, bottom: 5),
                decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(6)),
                child: Text(
                  discount,
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                      fontSize: 10),
                ),
              ),
            ],
          ),
        ),
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: Container(
        //     padding: EdgeInsets.all(5),
        //     margin: EdgeInsets.only(top: 15, left: 15),
        //     decoration: BoxDecoration(
        //         color: Colors.blue, borderRadius: BorderRadius.circular(6)),
        //     child: Text(
        //       "Featured",
        //       style: TextStyle(
        //           fontWeight: FontWeight.w900,
        //           color: Colors.white,
        //           fontSize: 10),
        //     ),
        //   ),
        // ),
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: Container(
        //     padding: EdgeInsets.all(5),
        //     margin: EdgeInsets.only(top: 40, left: 15),
        //     decoration: BoxDecoration(
        //         color: Colors.red[600], borderRadius: BorderRadius.circular(6)),
        //     child: Text(
        //       discount,
        //       style: TextStyle(
        //           fontWeight: FontWeight.w900,
        //           color: Colors.white,
        //           fontSize: 10),
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}
