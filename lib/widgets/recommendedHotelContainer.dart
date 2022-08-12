import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

Widget RecommendedHotelsContainer(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 350,
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
              height: 170,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/hotel1.jpg"),
                      fit: BoxFit.cover),
                  borderRadius:
                  BorderRadius.vertical(top: Radius.circular(12))),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(12))),
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
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 18,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Capital Hotel and Spa",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Addis Ababa",
                    style: TextStyle(color: Colors.black54, fontSize: 15),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.blue),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text("5 / 5", style: TextStyle(
                            color: Colors.blue, fontSize: 15
                        ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Excellent",
                        style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        " (4 Reviews)",
                        style: TextStyle(color: Colors.black54, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "From: ",
                            style: TextStyle(color: Colors.black54, fontSize: 15),
                          ),
                          Text(
                            "300.00 ETB",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            " / night",
                            style: TextStyle(color: Colors.black54, fontSize: 15),
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
      ],
    ),
  );
}
