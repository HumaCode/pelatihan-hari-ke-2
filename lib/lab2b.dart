import 'package:flutter/material.dart';

class Lab2b extends StatelessWidget {
  const Lab2b({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 2b'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // teks
            const Text("Menampilkan kotak kecil dan kotak besar"),

            const SizedBox(height: 30),

            // row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Kotak(),
                KotakTinggi(),
                Kotak(),
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
