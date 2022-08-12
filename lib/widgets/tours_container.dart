import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';

Widget ToursContainer(BuildContext context){
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
                  image: DecorationImage(image: AssetImage("images/place2.jpg"), fit: BoxFit.cover),
                  borderRadius: BorderRadius.vertical(top: Radius.circular(12))
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 125,
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(12))
                ),
                padding: EdgeInsets.only(right: 2),
                child: Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.favorite_border_outlined, size: 25, color: Colors.white,))),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined, color: Colors.black54, size: 15,),
                      SizedBox(width: 2,),
                      Text("New York City", style: TextStyle(
                          fontSize: 12,
                          color: Colors.black54
                      ),)
                    ],
                  ),
                  SizedBox(height: 5,),
                  Text("Western Blt From San Francisco", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orangeAccent, size: 20,),
                      Text(" 5", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold)),
                      Text(" (3 Reviews)", style: TextStyle(color: Colors.black54, fontSize: 14)),
                    ],
                  ),
                  SizedBox(height: 5,),
                  Divider(color: Colors.grey,),
                  SizedBox(height: 10,),
                  Row(children: [
                    Text("From ", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54
                    ),),
                    Text("300.00 ETB", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black
                    ),)
                  ],),
                  SizedBox(height: 5,),
                  Row(children: [
                    Icon(Icons.access_time, size: 15, color: Colors.black54,),
                    Text(" 5 hours", style: TextStyle(
                        fontSize: 12,
                        color: Colors.black54
                    ),)
                  ],)
                ],
              ),
            ),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            margin: EdgeInsets.only(bottom: 85, right: 10),
            child: Icon(Icons.account_circle_rounded, size: 30, color: Colors.white,),
          ),
        ),
      ],
    ),
  );
}