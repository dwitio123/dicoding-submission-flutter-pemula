import 'package:aneka_makanan_indonesia/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aneka Makanan Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
