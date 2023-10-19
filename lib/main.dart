import 'package:flutter/material.dart';
import 'package:wisata_bandung/detail_screen.dart';
// import 'package:wisata_bandung/try.dart';
// import 'package:wisata_bandung/navigations.dart';
// import 'package:wisata_bandung/responsive.dart';
import 'package:wisata_bandung/main_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: const MainScreen(), // untuk halaman home
    );
  }
}