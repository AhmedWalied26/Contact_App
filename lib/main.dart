import 'package:contact_app/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Inter_18pt'),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
