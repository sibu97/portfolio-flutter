import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => const MyHome(),
        // 'about': (context) => About(),
      },
    
    ),

 

   );
}
