import 'package:flutter/material.dart';

class Lab2a extends StatelessWidget {
  const Lab2a({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lab 2 a"),
      ),
      body: Center(
        child: Column(
          children: [
            // teks
            const Text("Menampilkan kotak"),

            const SizedBox(height: 30),

            // row
            Row(
              children: <Widget>[
                Kotak(),
                Kotak(),
                Kotak(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Kotak extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
