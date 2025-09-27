import 'package:flutter/material.dart';
import 'package:dart_ping/dart_ping.dart';

class TraceroutePage extends StatefulWidget {
  const TraceroutePage({super.key});

  @override
  State<TraceroutePage> createState() => _TraceroutePageState();
}

class _TraceroutePageState extends State<TraceroutePage> {
  TextEditingController _controller = TextEditingController();
  String _result = "";
  bool _isRunning = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Traceroute"), backgroundColor: Colors.blue[900]),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
            TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: "أدخل اسم الموقع أو IP"),
          ),
         SizedBox(height: 10),
        ]),
    ),
    );
  }
}
