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
  Future<void> _scanPorts() async {
    final host = _controller.text.trim();
    if (host.isEmpty) {
      setState(() {
        _result = "⚠ أدخل عنوان IP أو اسم Host أولاً";
      });
      return;
    }
    setState(() {
      _result = "جارٍ الفحص...\n";
      _isScanning = true;
    });
    try {
      final stream = PortScanner.scanPortsForSingleDevice(
        host,
        startPort: 1,
        endPort: 1024,
        timeout: const Duration(seconds: 1),
      );
      // كل عنصر هو ActiveHost يحوي قائمة openPorts
      await for (final activeHost in stream) {
        for (final openPort in activeHost.openPorts) {
          final serviceName = _wellKnownPorts[openPort.port] ?? 'غير معروف';
          setState(() {
            _result +=
            "✅ المنفذ ${openPort.port} مفتوح ($serviceName)\n";
          });
        }
      }
      setState(() {
        _result += "\n🎯 الفحص انتهى.";
        _isScanning = false;
      });
    } catch (e) {
      setState(() {
        _result = "❌ حصل خطأ: $e";
        _isScanning = false;
      });
    }
  }


      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("فحص المنافذ (Port Scanner)"),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                children: [
                  TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: "أدخل IP أو Host",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _isScanning ? null : _scanPorts,
                    child: const Text("ابدأ الفحص"),
                  ),
                  const SizedBox(height: 16),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        _result,
                        style: const TextStyle(fontFamily: "monospace"),
                      ),
                    ),
                  ),
                ]),
          ),
        );
      }
    }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
