import 'package:flutter/material.dart';
import 'package:prj_1/FirstScreen.dart';
import 'package:prj_1/Login/Login.dart';
import 'package:prj_1/Route/OngenerateRoute.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home:const  FirstScreen(),
      onGenerateRoute: (settings) => AppRoute().OngenerateRoute(settings),
    );
  }
}