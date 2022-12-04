import 'package:flutter/material.dart';
import 'package:zent/screens/login.dart';
import 'package:zent/screens/notification.dart';
import 'package:zent/screens/otp.dart';
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
        child: 
        
        Scaffold(
            backgroundColor: Color(0xff2B9A9F),
            body: (Column(
      children: [
        Flexible(
          flex: 6,
          child:Image.asset(
              "images/Signin.png",
              fit: BoxFit.fitWidth
            ),
          
        
        ),
        Flexible(
          flex: 6,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(80)),
              color: Colors.white,
            ),
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: Column(
                children: [
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: "Ultimate \nClass Management \nPlatform!",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 28),
                        ),
                      
                        TextSpan(
                          text: "\nThank you for joining with us! \nwe are looking to a \nlong & prosperous\n relationship.",
                        style:
                            TextStyle(fontWeight: FontWeight.w400, height: 1.4),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
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
                                builder: (context) => SelectInstitute()),
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
                            borderRadius: new BorderRadius.circular(14.0),
                          ),
                        ),
                      ), // Background co
                    ),
                 
                ],
              ),
            ),
          ),
        ),
      ],
    )),),);
  }
}
