import 'package:flutter/material.dart';
import 'package:gofere_travels/constants/strings.dart';
import 'package:gofere_travels/pages/carrentalpage.dart';
import 'package:gofere_travels/pages/flagpage.dart';
import 'package:gofere_travels/pages/homepage.dart';
import 'package:gofere_travels/pages/hotelpage.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {

  int index = 0;
  final screens = [
    HomePage(),
    HotelPage(),
    CarRentalPage(),
    FlagPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          height: 80,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              offset: Offset(0, 1.0),
              blurRadius: 7.0,
            )
          ],
          color: Colors.white),
          child: AppBar(
            brightness: Brightness.dark,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            toolbarHeight: 70,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                  iconSize: 30,
                  onPressed: () {
                  },
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.black,
                  )),
              IconButton(
                  padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                  iconSize: 30,
                  onPressed: () {
                  },
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            ],
            title: Text(
              Strings.app_title,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Nunito',
                letterSpacing: 0.3,
              ),
            ),
          ),
        ),
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        selectedItemColor: Colors.black,
        iconSize: 28,
        onTap: (index) => setState(() => this.index = index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bed),
            label: "Hotel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: "Car Rental",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flag),
            label: "Flag",
          ),
        ],
      ),
    );
  }
}
