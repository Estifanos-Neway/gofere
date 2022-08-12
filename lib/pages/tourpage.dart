import 'package:flutter/material.dart';
import 'package:gofere_travels/data/tours.dart';
import 'package:gofere_travels/widgets/tours_container.dart';

class TourPage extends StatefulWidget {
  const TourPage({Key? key}) : super(key: key);

  @override
  State<TourPage> createState() => _TourPageState();
}

class _TourPageState extends State<TourPage> {
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
                        "Tours",
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
                      itemCount: tours.length,
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        Map<String, dynamic> tour = tours[index];
                        return Container(
                            child: ToursContainer(
                          context,
                          tour["name"],
                          tour["imageUrl"],
                          tour["location"],
                          tour["starCount"],
                          tour["reviewCount"],
                          tour["price"],
                          tour["duration"],
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
