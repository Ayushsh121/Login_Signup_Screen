import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nauggets_task/login_screen.dart';
import 'package:nauggets_task/login_sign_up_screen.dart';
import 'package:nauggets_task/second_screen.dart';
import 'package:nauggets_task/sign_up_screen.dart';
import 'package:nauggets_task/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const login_sign_up_screen(),
    );
  }
}
