import 'package:flutter/material.dart';
import 'package:straksnl/pages/aardbeving_overview_page.dart';
import 'package:straksnl/components/aardbeving_item.dart';
import 'package:straksnl/models/aardbeving.dart';
import 'package:straksnl/pages/aardbeving_detail_page.dart';

class HulpPage extends StatefulWidget {
  const HulpPage({super.key});

  @override
  State<HulpPage> createState() => _HulpPageState();
}

class _HulpPageState extends State<HulpPage> {
  List<Aardbeving> loadedAardbevings = [
    Aardbeving(
      id: 'p1',
      title: 'İk wil hulp',
      description:
          '1. ik wil een tentje                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  2. ik wil eten                                                                                                                                                                                                                                                                                            3. ik wil een verwarming                                                                                                                                                                                                                                                              4. ik wil benzine',
      imageUrl:
          'https://images.frieschdagblad.nl/frd/incoming/t8pm3j-202302083916.jpg/alternates/LANDSCAPE_1280/202302083916.jpg',
    ),
    Aardbeving(
      id: 'p2',
      title: 'Ik wil helpen',
      description:
          '1. Ik wil tent sturen 2. Ik wil eten sturen 3. Ik wil een kachel sturen 4. Ik wil kleding opsturen',
      imageUrl:
          'https://external-ams2-1.xx.fbcdn.net/emg1/v/t13/6390760036620963827?url=https%3A%2F%2Fwww.rodekruis.nl%2Fwp-content%2Fuploads%2F2023%2F02%2Frode-kruis-slaat-arm-om-de-schouders-na-aardbeving-Syrie-Turkije.jpg&fb_obo=1&utld=rodekruis.nl&stp=c0.5000x0.5000f_dst-jpg_flffffff_p500x261_q75&ccb=13-1&oh=06_AbFR_DhUUj_KYffCNxz91Jo5hG7zcSttZ6IY-073o-6NTw&oe=640A370B&_nc_sid=7ca135',
    ),
    Aardbeving(
      id: 'p3',
      title: 'Een donatie doen',
      description:
          ' Hoeveel euro wil je versturen? :   Voornaam / Achternaam :    Bankkaart nummer ',
      imageUrl:
          'https://static.vecteezy.com/ti/gratis-vector/p1/4327955-donatiebox-hartjes-in-een-doosje-gooien-voor-donaties-doneren-geven-geld-en-liefde-concept-van-liefdadigheid-geef-en-deel-je-liefde-met-mensen-humanitaire-vrijwilligersactiviteit-vector.jpg',
    ),
    Aardbeving(
      id: 'p4',
      title: 'Actuele Informatie Over Aardbevingen',
      description:
          ' In Turkije zijn dit weekend twee mensen gevonden die door familie als vermist waren opgegeven bij het ministerie van Buitenlandse Zaken. Zij zijn helaas om het leven gekomen als gevolg van de aardbevingen. Ondertussen is duidelijk geworden dat één van hen niet over de Nederlandse nationaliteit beschikt. ',
      imageUrl:
          'https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA17ewzU.img?h=0&w=600&m=6&q=60&u=t&o=f&l=f',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AardbevingNoodsituatie'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'Hulp',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: loadedAardbevings.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 4 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 25,
                ),
                itemBuilder: (ctx, i) =>
                    AardbevingItem(aardbeving: loadedAardbevings[i]),
              ),
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
