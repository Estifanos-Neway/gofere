import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gofere_travels/widgets/hotels_container.dart';
import 'package:gofere_travels/widgets/tours_container.dart';
import 'package:gofere_travels/widgets/recommendedTourContainer.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({Key? key}) : super(key: key);

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
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
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Text("Hotels",
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
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                        childAspectRatio: (180 / 320),),
                      itemCount: 31,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index){
                        return Container(
                            child: HotelsContainer(context));
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
