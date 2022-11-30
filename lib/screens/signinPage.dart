import 'package:flutter/material.dart';
import 'package:zent/screens/verifyOTP.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff2B9A9F),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 360,
                  child: Image.asset(
                    "images/Signin.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  color: Colors.white,
                  height: 350,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 35, 80, 0),
                    child: Column(
                      children: [
                        Container(
                          
                          child: Text(
                            "Ultimate \nClass Management \nPlatform!",
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 24),
                          ),
                        ),
                        Container(
                          child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 30, 0),
                              child: Text(
                                "Thank you for joining with us! \nwe are looking to a \nlong & prosperous\n relationship.",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, height: 1.4),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(50, 8, 0, 0),
                          child: SizedBox(
                            height: 55,
                            width: 350,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const VerifyOTP()),
                                );
                              },
                              child: Text(
                                "Sign in now",
                                style: TextStyle(
                                    fontWeight: FontWeight.w300, fontSize: 20),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff2B9A9F),
                                shape: new RoundedRectangleBorder(
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                              ),
                            ), // Background co
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
