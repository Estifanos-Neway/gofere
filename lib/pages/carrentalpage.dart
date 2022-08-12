import 'package:flutter/material.dart';
import 'package:gofere_travels/data/cars.dart';
import 'package:gofere_travels/widgets/cars_container.dart';

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
                children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, left: 20, right: 20),
                      child: Text(
                        "Cars",
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: (180 / 320),
                      ),
                      itemCount: cars.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> car = cars[index];
                        return Container(
                            child: CarsContainer(
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
                        ));
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
