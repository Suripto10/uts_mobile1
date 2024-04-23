import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Layout UTS Mobile Programming Lanjut';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        // #docregion addWidget
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                image: 'images/saya.jpg',
              ),
              TitleSection(
                name: 'SURIPTO (STI202102425)',
                location:
                    'Cendana RT 01/01, Kecmatan Kutasari, Kabupaten Purbalingga',
              ),
              ButtonSection(),
              TextSection(
                  description: 'Perkenalkan nama saya SURIPTO, '
                      'Usia saya 20 tahun, '
                      'Saya memiliki tingi badan 165 cm, '
                      'dan berat badan saya 55 kg, '
                      'Rambut saya berwarna hitam karena tidak suka mewarnai rambut dan juga bukan keturuan bule, '
                      'warna mata saya Coklat, '
                      'dan memiliki bentuk wajah Oval'
                      'dan tahi lalat di pipi. '
                      'Saya Lahir dan dibesarkan di Cendana, Anak pertama dan sekarang saya '
                      'masih kuliah di STMIK Widya Utama jenjang S1 prodi Teknik Informatika semester enam. '
                      'Saya menyukai beberapa kebiasaan adalah, bermain game, menonton film,membaca buku, berolahraga.'
                      'Dan kebiasaan yang paling saya sukai salah satunya adalah beolahraga, '
                      'Karena bisa menyehatkan tubuh.dan '
                      'Saya adalah seorang yang aktif dan sangat menyukai olahraga bersepeda. '
                      'Setiap akhir pekan, dia selalu menyempatkan diri untuk bersepeda, '
                      'terkadang sendirian ataupun bersama teman-temannya. '
                      'Saya memiliki sepeda gunung yang dirawatnya dengan baik. '
                      'Saya suka sekali menjelajah berbagai macam rute, '
                      'dari perkotaan hingga perbukitan. '
                      'Bersepeda baginya bukan hanya sekedar olahraga, '
                      'tetapi juga cara untuk melepas penat dan menikmati udara segar. '
                      'Dia seringkali membagikan foto-foto perjalanannya di media sosial, '
                      'dan teman-temannya selalu kagum dengan tempat-tempat indah yang dia kunjungi. '
                      'Selain itu, Saya juga tergabung dalam komunitas sepeda di daerahnya. '
                      'Mereka sering mengadakan acara gowes bersama, '
                      'yang membuat Saya bisa menambah teman baru dan berbagi pengalaman bersepeda. '
                      'Semangat dan kecintaan Saya terhadap bersepeda membuat dia, '
                      'selalu inspiratif bagi orang-orang di sekitarnya.'),
            ],
          ),
        ),
        // #enddocregion addWidget
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          // #docregion Icon
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          // #enddocregion Icon
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(
            color: color,
            icon: Icons.call,
            label: 'CALL',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.near_me,
            label: 'ROUTE',
          ),
          ButtonWithText(
            color: color,
            icon: Icons.share,
            label: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

// #docregion ImageSection
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion Image-asset
    return Image.asset(
      image,
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
    // #enddocregion Image-asset
  }
}
// #enddocregion ImageSection

// #docregion FavoriteWidget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion FavoriteWidget

// #docregion _FavoriteWidgetState, _FavoriteWidgetState-fields, _FavoriteWidgetState-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion _FavoriteWidgetState-build
  bool _isFavorited = true;
  int _favoriteCount = 41;

  // #enddocregion _FavoriteWidgetState-fields

  // #docregion _toggleFavorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  // #enddocregion _toggleFavorite

  // #docregion _FavoriteWidgetState-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: SizedBox(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
// #docregion _FavoriteWidgetState-fields
}
