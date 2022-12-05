// ignore_for_file: unrelated_type_equality_checks, unnecessary_null_comparison, use_build_context_synchronously, unnecessary_new, avoid_print

import 'package:flutter/material.dart';
import 'package:zent/Verfication/mobileNO.dart';
import 'package:zent/screens/selectInstitute.dart';

class Otp extends StatefulWidget {
  final String? id;
  const Otp({super.key, required this.id});

  @override
  
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController _otp = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(child: 
    Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(1),
          child: Column(children: [
            const SizedBox(
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
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 8, 220, 0),
                  child: Text(
                    "Verify OTP ",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 8, 50, 45),
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
                  padding: const EdgeInsets.fromLTRB(20, 8, 10, 0),
                  child: SizedBox(
                    height: 55,
                    width: 315,
                    child: ElevatedButton(
                      onPressed: () async {
                        Map<String, Object> otpvalue = {
                          'id':widget.id!,
                          'otp': _otp.text,
                        };
                        print(widget.id);
                        
                        bool status = await Http().otp(otpvalue);

                        if ( status ) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Signin Successfully')));
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SelectInstitute()),
                        );

                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Signin Failed')));
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2B9A9F),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      child: const Text(
                        "Start learning now",
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 20),
                      ),
                    ), // Background color
                  ),
                ),
              ],
            )
          ]),
        ),
      ),),
    );
  }
}
