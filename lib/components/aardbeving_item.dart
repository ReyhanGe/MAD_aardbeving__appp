import 'package:flutter/material.dart';
import 'package:straksnl/pages/aardbeving_overview_page.dart';
import 'package:straksnl/pages/aardbeving_detail_page.dart';
import 'package:straksnl/models/aardbeving.dart';

class AardbevingItem extends StatelessWidget {
  final Aardbeving aardbeving;

  const AardbevingItem({required this.aardbeving});

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        title: Text(
          aardbeving.title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Color.fromARGB(137, 0, 0, 0),
      ),
      child: Tooltip(
        message: 'Bekijken',
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => AardbevingDetailPage(aardbeving: aardbeving),
              ),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.green],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
              ),
            ),
            child: Opacity(
              opacity: 0.7,
              child: Image.network(
                aardbeving.imageUrl,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
