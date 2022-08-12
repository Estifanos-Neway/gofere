import 'package:flutter/material.dart';

Widget TopDestinationContainer(BuildContext context, String title, String tourCount, String hotelCount, String carRentalCount, String rentalCount, String image) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 350,
    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Container(
      width: MediaQuery.of(context).size.width,
      height: 350,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.white,
            fontSize: 26
          ),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // SizedBox(width: 2,),
              Text(tourCount, style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 14
              ),),
              // SizedBox(width: 5,),
              Icon(Icons.circle, color: Colors.grey, size: 5,),
              // SizedBox(width: 5,),
              Text(hotelCount, style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 14
              ),),
              // SizedBox(width: 5,),
              Icon(Icons.circle, color: Colors.grey, size: 5,),
              // SizedBox(width: 5,),
              Text(carRentalCount, style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 14
              ),),
              // SizedBox(width: 5,),
              Icon(Icons.circle, color: Colors.grey, size: 5,),
              // SizedBox(width: 5,),
              Text(rentalCount, style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: 14
              ),),
            ],
          ),
        ],
      ),
    ),
  );
}