import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static Future setEmail(String email) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    shared.setString("email", email);
  }

  static Future<String> getEmail() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return await shared.getString("email") ?? "Ma`lumot topilmadi";
  }

  static Future setParol(int parol) async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    shared.setInt("parol", parol);
  }

  static Future<int?> getParol() async {
    SharedPreferences shared = await SharedPreferences.getInstance();
    return await shared.getInt("parol");
  }
}
