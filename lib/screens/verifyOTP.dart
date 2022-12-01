import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:zent/Verfication/otp.dart';
import 'package:zent/screens/homePage.dart';

class GetOTP extends StatefulWidget {
  final String? id;
  GetOTP({required this.id});

  @override
  
  State<GetOTP> createState() => _GetOTPState();
}

class _GetOTPState extends State<GetOTP> {
  TextEditingController _otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(child: 
    Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(1),
          child: Column(children: [
            SizedBox(
              height: 45,
            ),
            SizedBox(
              height: 360,
              width: 400,
              child: Image.asset(
                "images/verify.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 8, 220, 0),
                    child: Text(
                      "Verify OTP ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 8, 50, 45),
                    // child: OtpTextField(
                    //   numberOfFields: 6,
                    //   borderColor: Color(0xFF512DA8),
                    //   showFieldAsBox: true,
                    //   filled: true,
                    //   keyboardType: TextInputType.number,
                    //   handleControllers: (controllers) => _otp,
                    // ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "otp",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _otp,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 10, 0),
                    child: SizedBox(
                      height: 55,
                      width: 315,
                      child: ElevatedButton(
                        onPressed: () async {
                          Map<String, String> otpvalue = {
                            'id':widget.id?? "AATHAV",
                            'otp': _otp.text,
                          };
                          print(widget.id?? "AATHAV");
                          
                          bool status = await OTP().otp(otpvalue);

                          if (status != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Signin Successfully')));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()),
                          );

                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Signin Failed')));
                          }
                        },
                        child: Text(
                          "Start learning now",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 20),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff2B9A9F),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                      ), // Background color
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),),
    );
  }
}
