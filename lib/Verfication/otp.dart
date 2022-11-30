import 'package:http/http.dart' as http;
import 'dart:convert';

class OTP {
  Future<bool> otp(Map OtpNum) async {
    bool status = false;

    http.Response responseOTP = await http.post(
        Uri.parse(
            'https://oyster-app-cabgf.ondigitalocean.app/auth/ConfirmOTP'),
        body: jsonEncode(OtpNum),
        headers: {'Content-type': 'application/json'});

    if (responseOTP.statusCode == 200) {
      status = responseOTP.body.isNotEmpty;
    }
    return status;
  }
}
