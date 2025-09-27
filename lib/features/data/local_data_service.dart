import '../domain/entities/anime.dart';
import '../domain/entities/character.dart';

List<AnimeEntity> allAnimeData = [
  AnimeEntity(
    id: '1',
    title: 'Attack on Titan',
    animeClassify: 'Action',
    posterPath: 'assets/images/aot_poster.jpeg',
    topCharacters: [
      CharacterEntity(
        id: 'a1',
        name: 'Eren Yeager',
        imagePath: 'assets/images/eren_jaeger.jpeg',
      ),
    ],
  ),
  AnimeEntity(
    id: '2',
    title: 'Hunter x Hunter',
    animeClassify: 'Adventure',
    posterPath: 'assets/images/hunter_poster.png',
    // Your existing asset
    topCharacters: [
      CharacterEntity(
        id: 'h1',
        name: 'Gon Freecss',
        imagePath: 'assets/images/gon.png',
      ),
    ],
  ),AnimeEntity(
    id: '3',
    title: 'Naruto',
    animeClassify: 'Adventure',
    posterPath: 'assets/images/naruto_poster.jpeg',
    // Replace with actual assets
    topCharacters: [
      CharacterEntity(
        id: 'n1',
        name: 'Naruto Uzumaki',
        imagePath: 'assets/images/naruto.png',
      ),
    ],
  ),
  AnimeEntity(
    id: '4',
    title: 'Detective Conan',
    animeClassify: 'Mystery',
    posterPath: 'assets/images/conan_poster_.png',
    topCharacters: [
      CharacterEntity(
        id: 'd1',
        name: 'Conan Edogawa',
        imagePath: 'assets/images/conan.png',
      ),
    ],
  ),
  AnimeEntity(
    id: '5',
    title: 'Dragon Ball',
    animeClassify: 'Action',
    posterPath: 'assets/images/gogo_poster.png',
    // Replace with actual assets
    topCharacters: [
      CharacterEntity(
        id: 'g1',
        name: 'Goku',
        imagePath: 'assets/images/gogo.png',
      ),
    ],
  ),
  AnimeEntity(
    id: '6',
    title: 'One Piece',
    animeClassify: 'wisting of time',
    posterPath: 'assets/images/one_piece_poster.jpeg',
    // Replace with actual assets
    topCharacters: [
      CharacterEntity(
        id: 'o1',
        name: 'Luffy',
        imagePath: 'assets/images/luffy.png',
      ),
    ],
  ),
  AnimeEntity(
    id: '7',
    title: 'Demon Slayer',
    animeClassify: 'Action',
    posterPath: 'assets/images/demon_poster.png',
    // Replace with actual assets
    topCharacters: [
      CharacterEntity(
        id: 'o1',
        name: 'Akaza',
        imagePath: 'assets/images/akaza_pic.jpeg',
      ),
    ],
  ),
];
