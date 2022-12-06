// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:zent/screens/login/login.dart';
import 'package:zent/screens/progresspath.dart';
import 'package:zent/screens/selectInstitute.dart';

class LoginSplace extends StatefulWidget {
  const LoginSplace({super.key});

  @override
  State<LoginSplace> createState() => _LoginSplaceState();
}

class _LoginSplaceState extends State<LoginSplace> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff2B9A9F),
        body: (Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                width: double.infinity,
                child: Image.asset(
                  "images/Signin.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
                  color: Colors.white,
                ),
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                    children: [
                      const Text.rich(
                        TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: "Ultimate \nClass Management \nPlatform!",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 28),
                            ),
                            TextSpan(
                              text:
                                  "\nThank you for joining with us! \nwe are looking to a \nlong & prosperous\n relationship.",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, height: 1.4),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 45,
                        width: 260,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff2B9A9F),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14.0),
                            ),
                          ),
                          child: const Text(
                            "Sign in now",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 20),
                          ),
                        ), // Background co
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
