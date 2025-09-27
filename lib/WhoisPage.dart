import 'package:flutter/material.dart';
import 'package:whois/whois.dart';

class Whoispage extends StatefulWidget {
  const Whoispage({super.key});

  @override
  State<Whoispage> createState() => _WhoispageState();
}

class _WhoispageState extends State<Whoispage> {

  TextEditingController _controller = TextEditingController();
  String _result = "";
  bool _isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Whois"), backgroundColor: Colors.blue[900]),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
            TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: "أدخل اسم النطاق (Domain)"),
          ),
          SizedBox(height: 10),
        ]),
    ),
    );
  }
}
