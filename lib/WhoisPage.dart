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
    return const Placeholder();
  }
}
