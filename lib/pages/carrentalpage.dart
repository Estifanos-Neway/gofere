import 'package:flutter/material.dart';
import 'package:gofere_travels/data/cars.dart';
import 'package:gofere_travels/widgets/cars_container.dart';
import 'package:gofere_travels/widgets/cars_vertical_conatiner.dart';

class CarRentalPage extends StatefulWidget {
  const CarRentalPage({Key? key}) : super(key: key);

  @override
  State<CarRentalPage> createState() => _CarRentalPageState();
}

class _CarRentalPageState extends State<CarRentalPage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Cars",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black87,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "${cars.length} cars found",
                          style: TextStyle(fontSize: 15, color: Colors.black45),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  // GridView.builder(
                  //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  //       crossAxisCount: 2,
                  //       childAspectRatio: (180 / 320),
                  //     ),
                  //     itemCount: cars.length,
                  //     physics: NeverScrollableScrollPhysics(),
                  //     shrinkWrap: true,
                  //     itemBuilder: (context, index) {
                  //       Map<String, dynamic> car = cars[index];
                  //       return Container(
                  //           child: CarsContainer(
                  //         context,
                  //         car["name"],
                  //         car["imageUrl"],
                  //         car["category"],
                  //         car["seats"],
                  //         car["doors"],
                  //         car["bagCapacity"],
                  //         car["type"],
                  //         car["price"],
                  //         car["featured"],
                  //         car["discount"],
                  //       ));
                  //     }),
                  ListView.builder(
                      itemCount: cars.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        Map<String, dynamic> car = cars[index];
                        return Column(
                          children: [
                            Container(
                                child: CarsVerticalContainer(
                                  context,
                                  car["name"],
                                  car["imageUrl"],
                                  car["category"],
                                  car["seats"],
                                  car["doors"],
                                  car["bagCapacity"],
                                  car["type"],
                                  car["price"],
                                  car["featured"],
                                  car["discount"],
                                )),
                            // Divider(color: Colors.black,)
                          ],
                        );
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
