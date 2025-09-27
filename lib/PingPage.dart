import 'package:flutter/material.dart';
import 'package:dart_ping/dart_ping.dart';
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





// دالة بدء الـ Ping
  void _startPing() {
    final ip = _controller.text.trim(); // نجيب النص من خانة الإدخال
    if (ip.isEmpty) {
      setState(() {
        _result = "⚠ الرجاء إدخال IP أو Domain أولاً\n";
      });
      return;
    }

    setState(() {
      _result = "🔄 بدء تجربة Ping على $ip ...\n";
    });

    // إنشاء عملية Ping بعدد 4 مرات
    final ping = Ping(ip, count: 4);

    // نتابع النتائج اللي توصل من Ping
    ping.stream.listen((event) {
      setState(() {
        _result += event.toString() + "\n";
      });
    });
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(

        ),


        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              children: [
                // مربع إدخال المستخدم
                TextField(
                  controller: _controller,
                  decoration: InputDecoration(
                    labelText: "أدخل IP أو Domain",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                // زر بدء الـ Ping
                ElevatedButton(
                  onPressed: _startPing,
                  child: Text("ابدأ Ping"),
                ),
                SizedBox(height: 20),

              ]
          ),
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


