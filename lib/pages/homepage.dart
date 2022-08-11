import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofere_travels/widgets/homeFirst.dart';
import 'package:gofere_travels/widgets/recommendedContainer.dart';
import 'package:gofere_travels/widgets/specialOffers.dart';
import 'package:gofere_travels/widgets/special_offer_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> locations = ["Addis Ababa", "Adama"];
  String? value;
  String checker = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeFirst(),
            SpecialOffers(),
            Container(
              height: MediaQuery.of(context).size.height - 140,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Text("Recommended for you",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                            onPressed: (){},
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)
                              )
                            ),
                            child: Text("Hotel", style: TextStyle(
                              fontSize: 16
                            ),),
                          ),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                              onPrimary: Colors.black87,
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                // side: BorderSide(color: Colors.black, width: 0.2)
                              )
                          ),
                          child: Text("Tour", style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black87,
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          child: Text("Rental", style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                        ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.black87,
                              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)
                              )
                          ),
                          child: Text("Car", style: TextStyle(
                              fontSize: 16
                          ),),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  RecommendedContainer(context),
                ],
              ),
            )
          ],
        ),
      )
    );
  }

}
