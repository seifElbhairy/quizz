import 'package:flutter/material.dart';
import 'package:productt_quiz/provider/login_prov.dart';
import 'package:productt_quiz/provider/signup_prov.dart';
import 'package:productt_quiz/screen/login_screen.dart';
import 'package:productt_quiz/screen/signup_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=>SignUpProvider()),
        ChangeNotifierProvider(create: (context)=>LoginProvider()),
      ],
   child: MaterialApp(
     debugShowCheckedModeBanner: false,
      home:login()
   ),
    );
  }
}

