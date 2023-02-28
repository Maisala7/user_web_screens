

import 'package:flutter/material.dart';
import 'package:flutter_application_5/app_screen/cont.dart';
import 'package:flutter_application_5/app_screen/enter_data.dart';

import 'package:flutter_application_5/app_screen/firist_screen.dart';
import 'package:flutter_application_5/app_screen/payment.dart';

import 'app_screen/pay.dart';



void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    title: 'ID Card',
    debugShowCheckedModeBanner: false,
    home:Firist_screen()
   );

}
}
