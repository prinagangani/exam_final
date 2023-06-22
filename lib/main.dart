import 'package:exam_final/utils/provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'screens/homeScreen.dart';
void main()
{
  runApp(
     MultiProvider(
       providers: [
ChangeNotifierProvider(create:  (context) => HomeProvider(),),
       ],
       child: MaterialApp(
         debugShowCheckedModeBanner: false,
         routes: {
           '/':(context) => HomeScreen(),
         },
       ),
     ),
  );
}