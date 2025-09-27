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

  void _startTraceroute() {
    String host = _controller.text.trim();
    if (host.isEmpty) {
      setState(() => _result = "⚠ الرجاء إدخال اسم الموقع أو IP");
      return;
    }
    setState(() {
      _result = "🔍 بدء Traceroute إلى $host...\n";
      _isRunning = true;
    });

// نستخدم Ping لكن نحدد maxHop عشان يشتغل كـ traceroute
    final traceroute = Ping(host, count: 1,ttl: 30);

    traceroute.stream.listen((event) {
      setState(() {
        _result += "Hop ${event.response?.ttl} "
            "➡ ${event.response?.ip ?? 'No response'} "
            "⏱ ${event.response?.time?.inMilliseconds ?? 0} ms\n";
      });
      },


    onDone: () {
      setState(() {
        _result += "\n✅ انتهى Traceroute.";
        _isRunning = false;
      });
    }, onError: (e) {
    setState(() {
    _result += "❌ خطأ: $e\n";
    _isRunning = false;
    });
    });
  }


    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
            title: Text("Traceroute"), backgroundColor: Colors.blue[900]),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
              children: [
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                      labelText: "أدخل اسم الموقع أو IP"),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: _isRunning ? null : _startTraceroute,
                  child: Text("ابدأ Traceroute"),
                ),
                SizedBox(height: 20),
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
}
