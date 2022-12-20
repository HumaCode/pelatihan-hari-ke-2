import 'package:flutter/material.dart';

class Lab2c extends StatelessWidget {
  const Lab2c({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan 2c'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // teks
            const Text("Menampilkan kotak kecil dan kotak salib tidur"),

            const SizedBox(height: 30),

            // row
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  fit: FlexFit.tight,
                  flex: 2,
                  child: Kotak(),
                ),
                Flexible(
                  fit: FlexFit.tight,
                  flex: 1,
                  child: KotakTinggi(),
                ),
                Flexible(
                  fit: FlexFit.loose,
                  flex: 1,
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
