import 'package:flutter/material.dart';

Widget SpecialOfferContainer(BuildContext context, String title, String description, String image, String buttonText){
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 400,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: Container(
      height: 400,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.black.withOpacity(0.3),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200,),
          Text(description, style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          ),
          SizedBox(height: 10,),
          Text(title, style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),),
          SizedBox(height: 10,),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                primary: Colors.transparent,
                side: BorderSide(
                  color: Colors.white
                )
              ),
              child: Text(buttonText, style: TextStyle(
                fontSize: 16
              ),))
        ],
      ),
    ),
  );
}