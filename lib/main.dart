import 'package:bmi/screens/homePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bmi calculator',
      debugShowCheckedModeBanner:false,
      theme:ThemeData(primarySwatch: Colors.yellow,
       visualDensity:VisualDensity.adaptivePlatformDensity),
       home: HomePage(),
    );
  
      
    
  }
}
