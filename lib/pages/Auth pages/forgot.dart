import 'package:flutter/material.dart';
import 'package:new_project/contants/colors.dart';
import 'package:new_project/pages/Auth%20pages/signin.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const Loginpage(),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: glass,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: white,
                              size: 15,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Forgot Password",
                      style: TextStyle(color: white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
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
                Row(children: [
                  Icon(
                    Icons.mail_outline,
                    color: white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "Email Id",
                    style: TextStyle(color: white),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    width: 2,
                    color: Colors.grey.shade600,
                    height: 35,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          label: Text(
                            "Email",
                            style: TextStyle(color: white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: purple)),
                          hintText: "Enter your email id",
                          hintStyle: TextStyle(color: Colors.grey.shade700)),
                      style: TextStyle(color: white),
                    ),
                  ),
                ]),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Enter your registered Email Id",
                  style: TextStyle(color: white),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: purple, borderRadius: BorderRadius.circular(24)),
                  child: Center(
                    child: Text(
                      "Send OTP",
                      style: TextStyle(color: white, fontSize: 18),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
