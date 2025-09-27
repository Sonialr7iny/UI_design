import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_design/features/data/local_data_service.dart';
import 'package:ui_design/features/domain/entities/anime.dart';
import 'package:ui_design/features/domain/entities/character.dart';

import '../screens/details.dart';

List<CharacterEntity> _prepareFeaturedCharacters(List<AnimeEntity> allAnime) {
  List<CharacterEntity> featuredChars = [];
  for (var animeEntity in allAnime) {
    featuredChars.addAll(animeEntity.topCharacters);
  }

  return featuredChars;
}

Widget getFilteredContent(String filter, List<AnimeEntity> allAnimeData) {
  if (filter == 'All') {
    if (allAnimeData.isEmpty) {
      return Center(child: Text('No anime data available for "All" filter.'));
    }
    final List<CharacterEntity> character = _prepareFeaturedCharacters(
      allAnimeData,
    );
    return Column(
      children: [
        SizedBox(
          height: 310,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 14, left: 14, right: 14),
            itemCount: allAnimeData.length,
            itemBuilder: (context, index) {
              final anime = allAnimeData[index];
              return Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8, right: 8),
                // padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 184,
                          height: 287,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 184,
                                height: 240,
                                child: GestureDetector(
                                  onTap: (){
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Details()),
                                    );


                                  },
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(12),
                                    ),
                                    child: Image.asset(
                                      anime.posterPath,
                                      fit: BoxFit.cover,
                                      errorBuilder:
                                          (context, error, stackTrace) =>
                                              Icon(Icons.error),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 6),
                              Text(
                                anime.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14.0,
                                  fontFamily: 'Raleway',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 4),
                              Text(
                                anime.animeClassify,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12.0,
                                  fontFamily: 'Raleway',
                                  color: HexColor('#A9A9A9'),
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 18),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Top Characters',
                style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  SizedBox(
                    height: 156,
                    child: character.isEmpty
                        ? const Center(child: Text("No featured characters."))
                        : ListView.builder(
                            itemBuilder: (context, index) {
                             final CharacterEntity chara=character[index];
                              final anime = allAnimeData[index];
                              return Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Container(
                                      width: 100,
                                      // height: 160,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 88,
                                            width: 88,
                                            child: CircleAvatar(
                                              radius: 40,
                                              backgroundImage: AssetImage(
                                                chara.imagePath,
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 8),
                                          Text(
                                            chara.name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14,
                                              fontFamily: 'Raleway',
                                            ),
                                            textAlign: TextAlign.center,
                                            maxLines: 1,
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            allAnimeData[index].title,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12,
                                              fontFamily: 'Raleway',
                                              color: HexColor('#ACACAC'),
                                            ),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                            scrollDirection: Axis.horizontal,
                            itemCount: character.length,
                          ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  return Center(child: Text('Showing: $filter'));
}

