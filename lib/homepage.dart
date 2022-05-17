import 'package:flutter/material.dart';
import 'package:flutter_first_try/utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController inputController= TextEditingController();
  String resultMessage = "";
  static const String key = 'xznlwebgjhqdyvtkfuompciasr';
  static const String defaultValue = 'abcdefghijklmnopqrstuvwxyz';
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
            TextFormField(
              decoration: const InputDecoration(hintText: 'Enter something'),
              controller: inputController,
            ),
            SizedBox(
              height: ph(context, 15),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.green,
                  child: Text(resultMessage),
                ),
              ),
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
                      resultMessage = encrypting_function(inputController.text);
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
                      resultMessage = decrypting_function(inputController.text);
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
  String encrypting_function(String message) {
    String result = "";
    message.split('').forEach((element) {
      int position = defaultValue.indexOf(element);
      result += key[position];
    });
    return result;
  }
  String decrypting_function(String message) {
    String result = "";
    message.split('').forEach((element) {
      int position = key.indexOf(element);
      result += defaultValue[position];
    });
    return result;
  }
}

