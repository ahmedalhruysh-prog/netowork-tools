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
    return const Placeholder();
  }
}
