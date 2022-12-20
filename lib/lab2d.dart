import 'package:flutter/material.dart';

class Lab2d extends StatelessWidget {
  const Lab2d({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 2d'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // teks
            const Text("Menampilkan kotak"),

            const SizedBox(height: 30),

            // row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Spacer(flex: 1), //panjang 1/5
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1, //panjang 1/5
                  child: Kotak(),
                ),
                Spacer(flex: 2), //panjang 2/5
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1, //panjang 1/5
                  child: Kotak(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

//membuat tampilan kotak
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

//membuat tampilan kotak yang lebih tinggi
class KotakTinggi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 150,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
