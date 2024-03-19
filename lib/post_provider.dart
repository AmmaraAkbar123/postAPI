import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class PostProvider extends ChangeNotifier {
  Future<void> postApiData(String phone) async {
    // try {
      Response response = await http.post(
          Uri.parse(
              "https://staging.one.myignite.online/api/v1/auth/verify-phone-no"),
          body: jsonEncode({"phone": phone, "send_otp": true}));
      if (response.statusCode == 200) {
        inspect(response.body);
        print("successfull");

        notifyListeners();
      } else {
        print("failed");
      }
    // } catch (e) {
    //   "$e";
    // }
  }

  Future<void> postOtpData(String phone,) async {
    try {
      Response response = await http.post(
          Uri.parse(
              "https://staging.one.myignite.online/api/v1/auth/verify-otp"),
          body: {"phone": phone, "send_otp": "1211", "login": true});

      if (response.statusCode == 200 ) {
        print("successfull");

        notifyListeners();
      } else {
        print("failed");
      }
    } catch (e) {
      "$e";
    }
  }
}
