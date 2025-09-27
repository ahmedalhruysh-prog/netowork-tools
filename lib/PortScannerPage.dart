import 'package:flutter/material.dart';
import 'package:network_tools/network_tools.dart';


class PortScannerPage extends StatefulWidget {
  const PortScannerPage({super.key});

  @override
  State<PortScannerPage> createState() => _PortScannerPageState();
}

class _PortScannerPageState extends State<PortScannerPage> {

  final TextEditingController _controller = TextEditingController();
  String _result = "";
  bool _isScanning = false;



  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
