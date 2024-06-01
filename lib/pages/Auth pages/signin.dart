import 'package:flutter/material.dart';
import 'package:new_project/contants/colors.dart';
import 'package:new_project/pages/Auth%20pages/forgot.dart';
import 'package:new_project/pages/Auth%20pages/signup.dart';
import 'package:new_project/pages/screens/home_screen.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                      color: white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Sign in to continue",
                  style: TextStyle(color: white, fontSize: 17),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Text(
                      'Pay',
                      style: TextStyle(
                          color: purple,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Me',
                      style: TextStyle(
                          color: green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: purple,
                      ),
                      child: Icon(
                        Icons.person,
                        color: white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextFormField(
                      decoration: InputDecoration(
                          label: Text(
                            "User name",
                            style: TextStyle(color: white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: purple)),
                          hintText: "User name",
                          hintStyle: TextStyle(color: Colors.grey.shade700)),
                      style: TextStyle(color: white),
                    )),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: purple,
                      ),
                      child: Icon(
                        Icons.key,
                        color: white,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                        child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          label: Text(
                            "Password",
                            style: TextStyle(color: white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: purple)),
                          hintText: "Password",
                          suffixIcon: Icon(Icons.remove_red_eye),
                          hintStyle: TextStyle(color: Colors.grey.shade700)),
                      style: TextStyle(color: white),
                    )),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                  },
                  child: Text(
                    "Forgot your password?",
                    style: TextStyle(color: white),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: purple, borderRadius: BorderRadius.circular(24)),
                    child: Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(color: white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: glass, borderRadius: BorderRadius.circular(24)),
                    child: Center(
                      child: Text(
                        "Create an account",
                        style: TextStyle(color: white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: purpleback,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Icon(
                          Icons.fingerprint,
                          color: green,
                          size: 60,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
