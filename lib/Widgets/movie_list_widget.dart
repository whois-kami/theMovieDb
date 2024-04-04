import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FilmWidget extends StatefulWidget {
  FilmWidget({super.key});

  @override
  State<FilmWidget> createState() => _FilmWidgetState();
}

class _FilmWidgetState extends State<FilmWidget> {
  final TextEditingController _searchController = TextEditingController();
  var _filteredDataMovie = <Movie>[];
  final _dataMovie = <Movie>[
    Movie(
        id: 0,
        title: 'Кунг-фу панда 4',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 1,
        title: 'Назад в будущее 1',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 2,
        title: 'Назад в будущее 2',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 3,
        title: 'Назад в будущее 3',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 4,
        title: 'Бегущий по лезвию',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 5,
        title: 'Бойцовский клуб',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 6,
        title: 'Никто',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 7,
        title: 'Крик',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 8,
        title: 'Пила 1',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 9,
        title: 'Джуманджи',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
    Movie(
        id: 10,
        title: 'Эверест',
        data: 'March 28, 2024',
        image: Image.asset('assets/image/kungfu_panda.png'),
        description:
            'Po is gearing up to become the spiritual leader of his Valley of Peace, but also needs someone to take his place as Dragon Warrior. As such, he will train a new kung fu practitioner for the spot and will encounter a villain called the Chameleon who conjures villains from the past.'),
  ];

  void _onMovieTap(int index) {
    final argumets = _dataMovie[index].id;
    Navigator.pushNamed(context, '/home/movie_detail', arguments: argumets);
  }

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredDataMovie = _dataMovie.where((Movie movie) {
        return movie.title.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredDataMovie = _dataMovie;
    }
    setState(() {});
  }

  @override
  void initState() {
    _searchController.addListener(_searchMovies);
    _filteredDataMovie = _dataMovie;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.only(top: 50),
          itemCount: _filteredDataMovie.length,
          itemExtent: 163,
          itemBuilder: (context, index) {
            final currentMovie = _filteredDataMovie[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Stack(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          spreadRadius: -1,
                          offset: const Offset(-2, 0),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          spreadRadius: -1,
                          offset: const Offset(0, -2),
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          spreadRadius: -1,
                          offset: const Offset(0, 2),
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border(
                        top: BorderSide(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        right: BorderSide(
                          color: Colors.black.withOpacity(0.1),
                        ),
                        bottom: BorderSide(
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        currentMovie.image,
                        const SizedBox(width: 20),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 30),
                              Text(
                                currentMovie.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                currentMovie.data,
                                style: const TextStyle(color: Colors.grey),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  currentMovie.description),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      splashColor: Colors.grey.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => _onMovieTap(index),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.all(10),
          child: TextField(
            controller: _searchController,
            decoration: InputDecoration(
              hintText: 'Поиск',
              filled: true,
              fillColor: Colors.white.withAlpha(235),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    BorderSide(color: Colors.black.withOpacity(0.8), width: 1),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Color.fromRGBO(3, 37, 65, 1), width: 1)),
              isCollapsed: true,
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ),
      ],
    );
  }
}

class Movie {
  int id;
  String title;
  String data;
  Image image;
  String description;

  Movie(
      {required this.id,
      required this.title,
      required this.data,
      required this.image,
      required this.description});
}
