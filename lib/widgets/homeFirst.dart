import 'package:flutter/material.dart';

class HomeFirst extends StatefulWidget {
  const HomeFirst({Key? key}) : super(key: key);

  @override
  State<HomeFirst> createState() => _HomeFirstState();
}

class _HomeFirstState extends State<HomeFirst> {
  List<String> locations = ["Addis Ababa", "Adama"];
  String? value;
  String checker = '';

  @override
  Widget build(BuildContext context) {
    return Container(
            height: MediaQuery.of(context).size.height - 140,
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
                        child: Column(
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
                                  items: locations.map(buildMenuBranch).toList(),
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
                                            Icon(Icons.calendar_month, color: Colors.black38,),
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
                                            Icon(Icons.calendar_month, color: Colors.black38,),
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
                        )
                    ),
                  ],
                ),
              ),
            ),
    );
  }

  DropdownMenuItem<String> buildMenuBranch(String branch) => DropdownMenuItem(
    value: branch,
    child: Text(
      branch,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 18,
        fontFamily: 'Nunito',
        letterSpacing: 0.3,
      ),
    ),
  );

  Future<DateTime?> pickDate() => showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2050));

}
