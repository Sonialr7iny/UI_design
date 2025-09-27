import 'character.dart';

class AnimeEntity {
  final String id;
  final String title;
  final String animeClassify;
  final String posterPath; // URL or local asset path
  final List<CharacterEntity> topCharacters;

  AnimeEntity({
    required this.id,
    required this.title,
    required this.animeClassify,
    required this.posterPath,
    required this.topCharacters,
  });
}