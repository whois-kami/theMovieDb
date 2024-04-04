import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:themoviedb/elements/radiant_circle_rating.dart';

class MovieDetailsMain extends StatelessWidget {
  const MovieDetailsMain({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        _HeaderImages(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          child: _FilmTitle(),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: _UserScore(),
        ),
        ColoredBox(
          color: Color(0xFFD9C6A1),
          child: _ShortInformation(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: _AboutFilmWidget(),
        ),
      ],
    );
  }
}

class _HeaderImages extends StatelessWidget {
  const _HeaderImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Image.asset(
            'assets/image/banner_panda.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 20,
          left: -10,
          top: 20,
          child: Image.asset(
            'assets/image/kungfu_panda.png',
            width: 150,
            height: 150,
          ),
        )
      ],
    );
  }
}

class _FilmTitle extends StatelessWidget {
  const _FilmTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        children: [
          TextSpan(
            text: 'Кунг-фу панда 4',
            style: TextStyle(
              fontSize: 23,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          TextSpan(
            text: ' (2024)',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}

class _UserScore extends StatelessWidget {
  const _UserScore({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: SizedBox(
            width: 55,
            height: 55,
            child: RadialPercentWidget(
              percent: 69,
              fillcolor: const Color(0xFF081C22),
              linecolor: const Color(0xFFD2D531),
              freecolor: const Color(0xFF423D0F),
              linewidth: 4,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: '69',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: '%',
                        style: TextStyle(
                            fontSize: 8, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 5),
        const Text(
          'User \nScore',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 16),
        ),
        const SizedBox(width: 45),
        Image.asset(
          'assets/image/smiles.png',
          width: 60,
          height: 60,
        ),
        const SizedBox(
          height: 30,
          child: VerticalDivider(
            width: 20,
            thickness: 0.4,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  text: 'Что вы ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                TextSpan(
                  text: 'чувствуете?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        color: Colors.blue,
                        offset:
                            Offset(0, 3), // Управление отступом подчеркивания
                        blurRadius: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _ShortInformation extends StatelessWidget {
  const _ShortInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Text(
          'PG 2024-03-28 (GB) • 1h 34m ▷ Play Trailer Action,Adventure,Animation,Comedy,Family'),
    );
  }
}

class _AboutFilmWidget extends StatelessWidget {
  const _AboutFilmWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle positionStyle = TextStyle(
        color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16);
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Overview',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
        ),
        SizedBox(height: 10),
        Text(
          'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.',
          style: TextStyle(
              color: Color.fromARGB(255, 35, 35, 35),
              fontWeight: FontWeight.w400,
              fontSize: 16),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mike Mitchell', style: positionStyle),
                Text('Director'),
              ],
            ),
            SizedBox(width: 80),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Glenn Berger', style: positionStyle),
                Text('Writter'),
              ],
            )
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jonathan Aibel', style: positionStyle),
                Text('Director'),
              ],
            ),
            SizedBox(width: 70),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Darren Lemke', style: positionStyle),
                Text('Writter'),
              ],
            )
          ],
        )
      ],
    );
  }
}
