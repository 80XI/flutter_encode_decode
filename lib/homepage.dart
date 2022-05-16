import 'package:flutter/material.dart';
import 'package:flutter_first_try/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 36, right: 36),
        child: Column(
          children: [
            SizedBox(
              height: ph(context, 20),
              child: Container(),
            ),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Enter something'
              ),
            ),
            SizedBox(
              height: ph(context, 5),
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: const Text('Encryption'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white,
                  ),
                  onPressed: () {
                    setState(() {
                    });
                  },
                  child: const Text('Decryption'),
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
