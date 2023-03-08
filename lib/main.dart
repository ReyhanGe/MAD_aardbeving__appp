import 'package:flutter/material.dart';
import 'package:straksnl/pages/aardbeving_hulp_page.dart';
import 'package:straksnl/pages/aardbeving_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              title: Text('AardbevingNoodsituatie'),
              centerTitle: true,
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    title: Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    title: Text('Mijn Fluitje'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FluitjePage()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text('Hulp'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HulpPage()),
                      );
                    },
                  ),
                ],
              ),
            ),
            body: Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('adam.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(8.0),
                  color: Color.fromARGB(115, 255, 70, 70),
                  child: Text(
                    'AardbevingNoodsituatie',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(255, 93, 93, 93),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Advertentie',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
