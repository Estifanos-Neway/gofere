import 'package:flutter/material.dart';
import 'package:gofere_travels/pages/signin.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/simple_icons.dart';
import 'package:colorful_iconify_flutter/icons/logos.dart';
import 'package:gofere_travels/widgets/otherPlatformAccount.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isTermAcceptChecked = false;
  bool isNormalUser = true;
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
          padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SigninPage()));
                    },
                    child:
                        Text("Sign in", style: TextStyle(color: Colors.black)),
                  ),
                  Text(
                    "Sign up",
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(),
              SizedBox(
                height: 20,
              ),
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        value: isNormalUser,
                        onChanged: (v) {
                          setState(() {
                            isNormalUser = true;
                          });
                        },
                      ),
                      Text("Normal User"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        value: !isNormalUser,
                        onChanged: (v) {
                          setState(() {
                            isNormalUser = false;
                          });
                        },
                      ),
                      Text("Partner User"),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(fontWeight: FontWeight.w300),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        value: isTermAcceptChecked,
                        onChanged: (v) {
                          setState(() {
                            isTermAcceptChecked = v!;
                          });
                        },
                      ),
                      Text(
                        "I confirm that I have read and acceptd the privacy policy",
                        maxLines: 2,
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
                    Iconify(
                      SimpleIcons.facebook,
                      color: Color.fromARGB(255, 2, 120, 217),
                      size: 15,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OtherPlatfomr(
                      "Google",
                      Iconify(
                        Logos.google_icon,
                        size: 15,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  OtherPlatfomr(
                    "Twitter",
                    Iconify(
                      Logos.twitter,
                      size: 15,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
