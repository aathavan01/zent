import 'package:flutter/material.dart';
import 'package:zent/Verfication/mobileNO.dart';
import 'package:zent/screens/verifyOTP.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  TextEditingController _mobile = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 8, 220, 0),
                child: Text(
                  "Sign in ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(50, 8, 60, 45),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone_outlined),
                        hintText: "Mobile number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      controller: _mobile,
                    ),
                  ),
                  Text.rich(
                    TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'By signing in, you’re agree to our',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                        TextSpan(
                          text: '\nTerms & Conditions  ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B9A9F),
                              fontSize: 14),
                        ),
                        TextSpan(
                          text: 'and ',
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 14),
                        ),
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff2B9A9F),
                              fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 8, 10, 0),
                    child: SizedBox(
                      height: 55,
                      width: 315,
                      child: ElevatedButton(
                        onPressed: () async {
                          Map<String, String> value = {
                            'phoneNO': _mobile.text,
                          };
                           Object response = await Http().mobileNO(value);
                         
                          final ID = response;
                          

                          if (response != null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('OTP sent')));
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GetOTP(
                                      id: "ID",
                                    ),),
                          );

                         
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Failed to send OTP')));
                          }
                        },
                        child: Text(
                          "Verify OTP",
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
            ),
          ]),
        ),
      ),
    );
  }
}
