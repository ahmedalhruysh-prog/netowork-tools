
import 'package:flutter/material.dart';
import 'package:networktool/PingPage.dart';
import 'package:networktool/PortScannerPag.dart';
import 'package:networktool/TraceroutePage.dart';
import 'package:networktool/WhoisPage.dart';
import 'package:whois/whois.dart';

main(){
  runApp(May());
}
class May extends StatelessWidget {
  const May({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage() ,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
