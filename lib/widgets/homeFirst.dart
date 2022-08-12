import 'package:flutter/material.dart';
import 'package:gofere_travels/pages/carrentalpage.dart';
import 'package:gofere_travels/widgets/carRentalCheckIn.dart';
import 'package:gofere_travels/widgets/hotelCheckIn.dart';
import 'package:gofere_travels/widgets/rentalCheckIn.dart';
import 'package:gofere_travels/widgets/tourCheckIn.dart';

class HomeFirst extends StatefulWidget {
  const HomeFirst({Key? key}) : super(key: key);

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {

  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height - 70,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/place1.jpg"), fit: BoxFit.cover)
            ),
            child: Container(
              color: Colors.black.withOpacity(0.3),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30, 50, 30, 10),
                        child: Text("Where Would You Like To Go Today?",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      child: Text("Get the best prices on 20,000+ trips, hotels, cars and properties, in Ethiopia.",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(onPressed: (){}, child: Text("Tours", style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                          ),
                          TextButton(onPressed: (){}, child: Text("Hotel", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                          ),
                          TextButton(onPressed: (){}, child: Text("Rental", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                          ),
                          TextButton(onPressed: (){}, child: Text("Cars Rental", style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                          ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white
                        ),
                        child: RentalCheckIn(),
                    ),
                  ],
                ),
              ),
            ),
    );
  }

}
