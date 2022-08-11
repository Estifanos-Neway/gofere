import 'package:flutter/material.dart';

Widget RecommendedContainer(BuildContext context){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 350,
    margin: EdgeInsets.symmetric(horizontal: 50),
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/hotel1.jpg"), fit: BoxFit.cover),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))
          ),
          child: Container(
            margin: EdgeInsets.only(top: 10, right: 10),
            child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.favorite, size: 30, color: Colors.black54,))),
          ),
        )
      ],
    ),
  );
}