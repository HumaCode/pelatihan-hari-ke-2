import 'package:flutter/material.dart';

class Lab2f extends StatefulWidget {
  const Lab2f({super.key});

  @override
  AnimatedCrossFadeApp createState() => AnimatedCrossFadeApp();
}

class AnimatedCrossFadeApp extends State {
  var _kondisiTampil = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Lab2 f (Animasi 2)"),
        ),

        //membuat tampilan awal dan kondisi sebelum berubah
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                duration: Duration(seconds: 2),
                firstChild: FlutterLogo(
                    style: FlutterLogoStyle.horizontal, size: 100.0),
                secondChild:
                    FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
                crossFadeState: _kondisiTampil
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
              ),
              ElevatedButton(
                  child: Text("Jalankan Animasi!"),
                  onPressed: () {
                    setState(() {
                      _kondisiTampil = false;
                    });
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
