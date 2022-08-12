import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';
import 'package:gofere_travels/widgets/otherPlatformAccount.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Join Gofere",
          style: TextStyle(
            fontSize: 16,
            color: Color.fromARGB(255, 46, 46, 46),
          ),
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 46, 46, 46),
        ),
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: <Widget>[
                  Container(
                    child: TabBar(
                      labelColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.transparent,
                      tabs: [
                        Tab(text: 'Sign in'),
                        Tab(text: 'Sign up'),
                      ],
                    ),
                  ),
                  Container(
                    height: 1700, //height of TabBarView
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.grey,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: TabBarView(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sign in to your account",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Email or Username",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Log in",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 2, 120, 217),
                                    padding: EdgeInsets.symmetric(vertical: 18),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (newValue) {},
                                      ),
                                      Text("Remamber me"),
                                    ],
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Forget Password?",
                                      style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("or sign in with"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(child: Divider()),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    OtherPlatfomr(
                                      "Facebook",
                                      Iconify(Logos.facebook),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    OtherPlatfomr(
                                      "Google",
                                      Iconify(Logos.google_icon),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    OtherPlatfomr(
                                      "Twitter",
                                      Iconify(Logos.twitter),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "create an account",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 93, 169),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ])
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Create an account",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Username*",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Full Name",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Email*",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                  hintText: "Password",
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (newValue) {},
                                      ),
                                      Text("Normal User"),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (newValue) {},
                                      ),
                                      Text("Partner User"),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Register",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Color.fromARGB(255, 2, 120, 217),
                                    padding: EdgeInsets.symmetric(vertical: 18),
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: false,
                                        onChanged: (newValue) {},
                                      ),
                                      Text(
                                        "I confirm that I have read and acceptd the privacy policy",
                                        softWrap: true,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Divider(),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text("or sign in with"),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Expanded(child: Divider()),
                                ],
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    OtherPlatfomr(
                                      "Facebook",
                                      Iconify(Logos.facebook),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    OtherPlatfomr(
                                      "Google",
                                      Iconify(Logos.google_icon),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    OtherPlatfomr(
                                      "Twitter",
                                      Iconify(Logos.twitter),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "create an account",
                                        style: TextStyle(
                                          decoration: TextDecoration.underline,
                                          fontWeight: FontWeight.bold,
                                          color:
                                              Color.fromARGB(255, 0, 93, 169),
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ])
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
