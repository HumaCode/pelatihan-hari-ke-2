import 'package:flutter/material.dart';

class Lab2e extends StatefulWidget {
  const Lab2e({super.key});

  @override
  AnimatedContainerApp createState() => AnimatedContainerApp();
}

//buat class state : AnimatedContainerApp pada file AnimatedContainerApp.dart
class AnimatedContainerApp extends State {
  String _teks = "Inixindo";
  var _warna = Colors.yellow;
  var _height = 200.0;
  var _width = 200.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("lab2 e (Animation)"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                duration: Duration(seconds: 1),
                onEnd: () {
                  setState(() {
                    _warna = Colors.yellow;
                    _height = 200.0;
                    _width = 200.0;
                  });
                },
                color: _warna,
                width: _width,
                height: _height,
                child: Column(children: <Widget>[
                  Container(
                    child: Text(
                      _teks,
                    ),
                  )
                ]),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: Text("Jalankan Animasi"),
                onPressed: () {
                  setState(
                    () {
                      _warna = Colors.red;
                      _height = 400.0;
                      _width = 400.0;
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
