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

  void _lookupWhois() async {
    String domain = _controller.text.trim();
    if (domain.isEmpty) {
      setState(() => _result = "⚠ الرجاء إدخال اسم النطاق (Domain)");
      return;
    }


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
              ElevatedButton(
                onPressed: _isLoading ? null : _lookupWhois,
                child: Text("ابدأ Whois"),
              ),
              SizedBox(height: 20),
        ]),
    ),
    );
  }
}
