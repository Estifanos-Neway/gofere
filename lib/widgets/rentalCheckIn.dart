import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/uil.dart';
import 'package:iconify_flutter/icons/tabler.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/teenyicons.dart';

class RentalCheckIn extends StatefulWidget {
  const RentalCheckIn({Key? key}) : super(key: key);

  @override
  State<RentalCheckIn> createState() => _RentalCheckInState();
}

class _RentalCheckInState extends State<RentalCheckIn> {

  List<String> guests = ["Rooms", "Adults", "Children"];
  List<String> locations = ["Addis Ababa", "Adama", "Addis Ababa", "Adama","Addis Ababa", "Adama"];
  String? value;
  String checker = '';
  String guestChecker = '';

  int roomCount = 1, adultCount = 1, childrenCount = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Visibility(visible: false, child: Icon(Icons.arrow_downward)),
              value: value,
              isExpanded: true,
              hint: Row(
                children: [
                  Icon(Icons.location_on_outlined, size: 30, color: Colors.black38,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Location", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),),
                      SizedBox(height: 2,),
                      Text("Where are you going?", style: TextStyle(
                          color: Colors.black38
                      ),)
                    ],
                  ),
                ],
              ),
              items: locations.map(buildMenuLocation).toList(),
              onChanged: (value) => setState(() {
                this.value = value;
                checker = value!;
              }),
            ),
          ),
        ),
        Divider(
          thickness: 0.6,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 15,),
                        Icon(Icons.calendar_month, size: 30, color: Colors.black38,),
                        SizedBox(width: 10,),
                        Text("Check in", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),)
                      ],
                    ),
                    onPressed: () {
                      pickDate();
                    },
                  ),
                ),
                Icon(Icons.arrow_forward_outlined, color: Colors.black38,),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(vertical: 0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.calendar_month, size: 30, color: Colors.black38,),
                        SizedBox(width: 10,),
                        Text("Check out", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 16
                        ),)
                      ],
                    ),
                    onPressed: () {
                      pickDate();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: 0.6,
        ),
        Container(
          width: double.infinity,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              icon: Visibility(visible: false, child: Icon(Icons.arrow_downward)),
              value: value,
              isExpanded: true,
              hint: Row(
                children: [
                  Iconify(Uil.users_alt, size: 30, color: Colors.black38,),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Guests", style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                      ),),
                      SizedBox(height: 2,),
                      Text("Add guests and rooms", style: TextStyle(
                          color: Colors.black38
                      ),)
                    ],
                  ),
                ],
              ),
              items: guests.map(buildGuest).toList(),
              onChanged: (value) => setState(() {
                this.value = value;
                guestChecker = value!;
              }),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              padding: EdgeInsets.symmetric(vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),),
            ),
            child: Text("Search", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
            ),),
            onPressed: () {
            },
          ),
        ),
      ],
    );
  }

  DropdownMenuItem<String> buildMenuLocation(String location) => DropdownMenuItem(
    value: location,
    child: Text(
      location,
      style: TextStyle(
        color: Colors.black,
        fontSize: 18,
        fontFamily: 'Nunito',
        letterSpacing: 0.3,
      ),
    ),
  );

  DropdownMenuItem<String> buildGuest(String guest) => DropdownMenuItem(
    value: guest,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          guest,
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: 'Nunito',
            letterSpacing: 0.3,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(onPressed: (){
              setState((){
                roomCount -= 1;
              });
            },
                child: Iconify(Uil.minus_circle, size: 30, color: Colors.black54,)),
            Text("${roomCount+1}", style: TextStyle(
                color: Colors.black
            ),),
            TextButton(onPressed: (){
              setState((){
                roomCount += 1;
              });
            }, child: Iconify(Carbon.add_alt, size: 30, color: Colors.black54,)),
          ],
        )
      ],
    ),
  );

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050));

}