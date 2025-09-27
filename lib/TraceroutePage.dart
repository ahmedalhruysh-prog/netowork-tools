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
    return const Placeholder();
  }
}
