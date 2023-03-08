import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:straksnl/pages/aardbeving_overview_page.dart';
import 'package:straksnl/components/aardbeving_item.dart';
import 'package:straksnl/models/aardbeving.dart';
import 'package:straksnl/pages/aardbeving_detail_page.dart';

class FluitjePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AardbevingNoodsituatie'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Mijn Fluitje',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: Image.asset(
                      'flut.jpg',
                      height: 500,
                      width: 400,
                    ),
                    onTap: () async {
                      AudioCache player = AudioCache();
                      await player.play('sound_effect.mp3');
                    },
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Druk op het fluitje en het zal klinken.',
                    style: TextStyle(fontSize: 18),
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
          ),
        ],
      ),
    );
  }
}
