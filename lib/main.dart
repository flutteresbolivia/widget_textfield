import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController controller = TextEditingController();
  String valor;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(() {
      // Haz algo aqui
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Container(
            width: 300,
            child: TextField(
              style: TextStyle(color: Colors.red),
              cursorColor: Colors.red,
              controller: controller,
              obscureText: true,
              keyboardType: TextInputType.text,
              onChanged: (texto) {
                valor = texto;
              },
              onSubmitted: (texto) {
                valor = texto;
              },
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.red,
                ),
                labelText: "Texto",
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.red),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.red),
                ),
                hintStyle: TextStyle(color: Colors.red),
                labelStyle: TextStyle(color: Colors.red),
                filled: true,
                fillColor: Colors.red.withOpacity(0.3),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
