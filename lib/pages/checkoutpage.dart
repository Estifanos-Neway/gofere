import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gofere_travels/constants/colors.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/typcn.dart';
import 'package:iconify_flutter/icons/uil.dart';

class CheckoutPage extends StatefulWidget {
  String name;
  String imageUrl;
  String location;

  CheckoutPage(this.name, this.imageUrl, this.location);

  @override
  State<CheckoutPage> createState() =>
      _CheckoutPageState(name, imageUrl, location);
}

class _CheckoutPageState extends State<CheckoutPage> {
  String name;
  String imageUrl;
  String location;

  _CheckoutPageState(this.name, this.imageUrl, this.location);

  int count = 1;
  int price = 1200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 220.h,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover)),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200.h,
                  padding: EdgeInsets.only(left: 10.w),
                  color: Colors.black.withOpacity(0.3),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 24.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        children: [
                          Text(
                            "Home",
                            style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 5,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          const Text(
                            "Ethiopia",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 5,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            location,
                            style: const TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: 5,
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      // Container(
                      //   margin: EdgeInsets.only(left: 10),
                      //   child: Text(
                      //     name,
                      //     style: TextStyle(
                      //         fontSize: 15,
                      //         color: Colors.white60,
                      //         fontWeight: FontWeight.w500),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.h, left: 20.w, right: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "Addis Ababa",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Duration",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "2 days",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Meal provided",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "yes",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Price per person",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                          Text(
                            "\$ ${price}",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Text(
                      "Preferences",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18.sp,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Number of people",
                            style: TextStyle(
                                fontSize: 15.sp, fontWeight: FontWeight.w300),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      count -= 1;
                                    });
                                  },
                                  icon: const Iconify(
                                    Uil.minus_circle,
                                    size: 20,
                                    color: Colors.blue,
                                  )),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "${count}",
                                style: const TextStyle(color: Colors.black),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              IconButton(
                                  onPressed: () {
                                    setState(() {
                                      count += 1;
                                    });
                                  },
                                  icon: const Iconify(
                                    Carbon.add_alt,
                                    size: 20,
                                    color: Colors.blue,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Price",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),
                          ),
                          Text(
                            "\$ ${price * count}",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 110.h,
                    ),
                    Center(
                      child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0)),
                                    //this right here
                                    child: Container(
                                      height: 310.h,
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(20.w, 30.h, 20.w, 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Choose a payment gateway",
                                              style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 18.sp,
                                              ),
                                            ),
                                            SizedBox(height: 15.h,),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                primary: Colors.grey[350],
                                                onPrimary: Colors.black87,
                                                padding: EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 30.w,),
                                                  Iconify(Ic.baseline_account_balance_wallet, size: 28),
                                                  SizedBox(width: 30.w,),
                                                  Text(
                                                    "Direct (bank)",
                                                    style: TextStyle(
                                                        fontSize: 16.sp),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 5.h,),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.grey[350],
                                                  onPrimary: Colors.black87,
                                                  padding: EdgeInsets.all(10),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 30.w,),
                                                  Iconify(Mdi.alpha_c_circle, size: 28, color: Color(0xFF4FD1D9)),
                                                  SizedBox(width: 30.w,),
                                                  Text(
                                                    "Chapa",
                                                    style: TextStyle(
                                                        fontSize: 16.sp),
                                                  ),
                                                  SizedBox(width: 1.w,),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 5.h,),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.grey[350],
                                                  onPrimary: Colors.black87,
                                                  padding: EdgeInsets.all(10),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 30.w,),
                                                  Iconify(Mdi.alpha_y_circle_outline, size: 28, color: Color(0xFF00983D),),
                                                  SizedBox(width: 30.w,),
                                                  Text(
                                                    "Yene Pay",
                                                    style: TextStyle(
                                                        fontSize: 16.sp),
                                                  )
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 5.h,),
                                            ElevatedButton(
                                              onPressed: () {},
                                              style: ElevatedButton.styleFrom(
                                                  primary: Colors.grey[350],
                                                  onPrimary: Colors.black87,
                                                  padding: EdgeInsets.all(10),
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(10)
                                                  )
                                              ),
                                              child: Row(
                                                children: [
                                                  SizedBox(width: 30.w,),
                                                  Iconify(Typcn.credit_card, size: 28,),
                                                  SizedBox(width: 30.w,),
                                                  Text(
                                                    "Credit Card",
                                                    style: TextStyle(
                                                        fontSize: 16.sp),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                });
                          },
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromARGB(255, 2, 120, 217),
                              onPrimary: Colors.white,
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 50.w),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          child: Text(
                            "Checkout",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp,
                            ),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
