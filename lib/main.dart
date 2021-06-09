import 'package:flutter/material.dart';
import 'package:watch_store/screens/BrandScreen/IndividualItemScreen.dart';
import 'package:watch_store/screens/HomeScreen/components/body.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
   
        
      ),
      home: Body(),
      routes : {
        IndividualItemScreen.routeName : (context)=>IndividualItemScreen(),
      }
    );
  }
}
