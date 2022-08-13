import 'package:flutter/material.dart';
import 'package:gofere_travels/constants/strings.dart';
import 'package:gofere_travels/pages/carrentalpage.dart';
import 'package:gofere_travels/pages/signin.dart';
import 'package:gofere_travels/pages/tourpage.dart';
import 'package:gofere_travels/pages/homepage.dart';
import 'package:gofere_travels/pages/hotelpage.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uiw.dart';
import 'package:iconify_flutter/icons/jam.dart';
import 'package:iconify_flutter/icons/ph.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  int index = 0;
  final screens = [HomePage(), TourPage(), HotelPage(), CarRentalPage()];

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
          ], color: Colors.white),
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
                  onPressed: () {},
                  icon: Iconify(
                    Jam.shopping_cart,
                    size: 28,
                  ),
                ),
                IconButton(
                    padding: EdgeInsets.fromLTRB(0, 0, 25, 0),
                    iconSize: 30,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninPage()));
                    },
                    icon: Iconify(
                      Uiw.user,
                      size: 22,
                    )),
              ],
              title: Image.asset(
                "images/logo_small.png",
                scale: 18.3,
              )),
        ),
      ),
      body: screens[index],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
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
            icon: Icon(Icons.flag_outlined),
            label: "Tour",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel),
            label: "Hotel",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: "Cars",
          ),
        ],
      ),
    );
  }
}
