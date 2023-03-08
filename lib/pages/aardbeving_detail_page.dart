import 'package:flutter/material.dart';
import 'package:straksnl/main.dart';
import 'package:straksnl/components/aardbeving_item.dart';
import 'package:straksnl/models/aardbeving.dart';
import 'package:straksnl/pages/aardbeving_detail_page.dart';
import 'package:straksnl/pages/aardbeving_overview_page.dart';
import 'package:straksnl/pages/aardbeving_hulp_page.dart';

class AardbevingDetailPage extends StatelessWidget {
  final Aardbeving aardbeving;

  const AardbevingDetailPage({required this.aardbeving});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(aardbeving.title),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 152, 145),
              Color.fromARGB(255, 144, 205, 255)
            ],
          ),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            Text(
              aardbeving.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
            ),
            SizedBox(height: 10),
            Image.network(
              aardbeving.imageUrl,
              height: MediaQuery.of(context).size.width * 0.8 * 9 / 16,
              width: MediaQuery.of(context).size.width * 0.8,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              child: Text(
                aardbeving.description,
                textAlign: TextAlign.center,
                softWrap: true,
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Column(
                    children: [
                      Icon(Icons.arrow_back,
                          size: 30, color: Color.fromARGB(255, 255, 187, 85)),
                      Text(
                        "Back Menu",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.home,
                        color: Color.fromARGB(255, 103, 100, 243),
                        size: 30,
                      ),
                      Text(
                        "Home",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
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
  }
}
