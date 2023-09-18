import 'package:flutter/material.dart';
import 'package:online_book_store/screens/auth_screens/signup_login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Novelty',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        // useMaterial3: true,
      ),
      home: const SignupLoginScreen(),
    );
  }
}
