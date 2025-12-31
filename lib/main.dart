import 'package:bootcamp_01/app/app.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

SharedPreferences? globalSharedPrefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  globalSharedPrefs = await SharedPreferences.getInstance();
  runApp(const MyApp());
}
