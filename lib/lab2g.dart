import 'package:flutter/material.dart';

class Lab2g extends StatefulWidget {
  const Lab2g({super.key});

  @override
  AnimatedDefaultTextStyleApp createState() => AnimatedDefaultTextStyleApp();
}

//buat class AnimatedDefaultTextStyleApp

class AnimatedDefaultTextStyleApp extends State {
  var _warna = Colors.red;
  var _ukuranTeks = 20.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lab2 g (Animasi 3)"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedDefaultTextStyle(
                  duration: const Duration(seconds: 1),
                  style: TextStyle(color: _warna, fontSize: _ukuranTeks),
                  child: Container(
                    child: Text("INIXINDO JOGJA"),
                  )),
              ElevatedButton(
                  child: Text("Jalankan Animasi"),
                  onPressed: () {
                    setState(() {
                      _warna = Colors.blue;
                      _ukuranTeks = 40.0;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
