import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

Widget HotelsContainer(BuildContext context){
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
              height: 5,
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 12,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 12,
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
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Addis Ababa",
                    style: TextStyle(color: Colors.black54, fontSize: 12),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text("5 / 5", style: TextStyle(
                            color: Colors.blue, fontSize: 12
                        ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Text(
                        "Excellent",
                        style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  // Text(
                  //   "4 Reviews",
                  //   style: TextStyle(color: Colors.black54, fontSize: 12),
                  // ),
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
                            style: TextStyle(color: Colors.black54, fontSize: 12),
                          ),
                          Text(
                            "300.00 ETB",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                          Text(
                            " / night",
                            style: TextStyle(color: Colors.black54, fontSize: 12),
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