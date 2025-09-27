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

  /// خريطة بأشهر المنافذ وأسمائها
  final Map<int, String> _wellKnownPorts = {
    20: 'FTP-Data',
    21: 'FTP',
    22: 'SSH',
    23: 'Telnet',
    25: 'SMTP',
    53: 'DNS',
    80: 'HTTP',
    110: 'POP3',
    143: 'IMAP',
    443: 'HTTPS',
    3306: 'MySQL',
    3389: 'RDP',
    5900: 'VNC',
    8080: 'HTTP-Alt',
  };


  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
