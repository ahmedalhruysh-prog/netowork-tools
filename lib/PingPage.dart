import 'package:flutter/material.dart';

class Pingpage extends StatefulWidget {
  const Pingpage({super.key});

  @override
  State<Pingpage> createState() => _PingpageState();
}

class _PingpageState extends State<Pingpage> {
  //متغير يخزن النتائج
  String _result = "";

  // متغير نتحكم فيه بالنص اللي يكتبه المستخدم (IP أو Domain)
  final TextEditingController _controller = TextEditingController();







  @override

  Widget build(BuildContext context) {
    return Scaffold(

      title: Text("أداة Ping"),
      backgroundColor: Colors.blue[900],

    body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    children: [
    // مربع إدخال المستخدم
    TextField(
    controller: _controller,
    decoration: InputDecoration(
    labelText: "أدخل IP أو Domain",
    border: OutlineInputBorder(),
    ),
    ),
    SizedBox(height: 10),
        ]
    ),
    ),
    );

  }
}
