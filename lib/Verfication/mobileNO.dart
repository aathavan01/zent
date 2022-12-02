import 'package:http/http.dart' as http;
import 'dart:convert';

class Http {
  Future<String> mobileNO(Map data) async {
    http.Response response = await http.post(
        Uri.parse('https://oyster-app-cabgf.ondigitalocean.app/auth/register'),
        body: jsonEncode(data),
        headers: {'Content-type': 'application/json'});
    final id = response.body;
    print(id);
    // if (response.statusCode == 200) {
    return id;
    // }
  }

  Future<bool> otp(Map OtpNum) async {
    bool status = false;
    print(OtpNum);
    http.Response responseOTP = await http.post(
        Uri.parse(
            'https://oyster-app-cabgf.ondigitalocean.app/auth/ConfirmOTP'),
        body: jsonEncode(OtpNum),
        headers: {'Content-type': 'application/json'});

    if (responseOTP.statusCode == 200) {
      status = true;
    }
    return status;
  }
}
