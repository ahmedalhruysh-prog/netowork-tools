
import 'package:flutter/material.dart';
import 'package:networktooll/PingPage.dart';

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
      appBar: AppBar(
        centerTitle: true,

        backgroundColor: Colors.indigoAccent,
        title: Text("Network Tools",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Padding(padding: EdgeInsets.all(16),
        child:GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1,
          children: [
            ToolCard(title: "ping", color:Colors.blue, icon:Icons.wifi,page:Pingpage()),
            ToolCard(title: "Traceroute", color:Colors.orange, icon: Icons.alt_route_rounded,page:Tracero),
            ToolCard(title: "port", color:Colors.green, icon: Icons.shield_moon_rounded,page:PortScannerPage()),
            ToolCard(title: "Whois", color:Colors.purple, icon:Icons.info_outline_rounded,page: WhoisPage(),),

          ],
        )
        ,),

    );
  }
}
class ToolCard extends StatelessWidget {
  final String title;
  final Color color;
  final IconData icon;
  final Widget page;
  const ToolCard({super.key,
    required this.title,
    required this.color,
    required this.icon,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>page));

      },
      child: Card(
        color: color,
        elevation: 10,
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child:
        Padding(padding: EdgeInsets.all(16),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon,color:Colors.white,size: 60,),

              Text(title,style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.bold)),
            ],

          ),),
      ),


    );
  }
}

