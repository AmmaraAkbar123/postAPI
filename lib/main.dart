import 'package:apipost/otp_screen.dart';
import 'package:apipost/post_provider.dart';
import 'package:apipost/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider<PostProvider>(
      create: (context) => PostProvider(),
      child: const MaterialApp(
        title: 'Phone Verification Example',
        home: SecondScreen(),
      ),
    );
  }
}