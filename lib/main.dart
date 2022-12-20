import 'package:flutter/material.dart';
import 'package:pelatihan2/lab2a.dart';
import 'package:pelatihan2/lab2b.dart';
import 'package:pelatihan2/lab2c.dart';
import 'package:pelatihan2/lab2d.dart';
import 'package:pelatihan2/lab2e.dart';
import 'package:pelatihan2/lab2f.dart';
import 'package:pelatihan2/lab2g.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Hari Ke-2',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Lab2g(),
    );
  }
}
