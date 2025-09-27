import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_design/features/presentations/screens/home_screen.dart';
import 'package:ui_design/features/presentations/screens/internet_screen.dart';
import 'package:ui_design/features/presentations/screens/library_screen.dart';
import 'package:ui_design/features/presentations/screens/search_screen.dart';
import 'package:ui_design/features/presentations/screens/setting_screen.dart';
import 'package:ui_design/features/presentations/widgets/custom_nav_bar.dart';

import '../../data/local_data_service.dart';
import '../widgets/filterContent.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String selectedFilter = 'All';
  final filter = [
    'All',
    'Popular',
    'Trending',
    'New Releases',
    'Top Rated',
    'Upcoming',
  ];
  List<Widget> screens = [
    HomeScreen(),
    LibraryScreen(),
    SearchScreen(),
    InternetScreen(),
    SettingScreen(),
  ];
  int currentIndex = 0;
  final anime = allAnimeData;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFDEE3FF), Colors.white],
                ),
              ),
            ),
            Positioned(
              top: -148.61,
              left: 116.39,
              width: 432,
              height: 432,
              child: Transform.rotate(
                angle: 12.84 * (3.1415926535 / 180),
                child: Image.asset('assets/images/star1.png'),
              ),
            ),
            SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: SizedBox(
                      height: 28,
                      // width: 327,
                      child: Text(
                        'Where Anime Comes Alive',
                        style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w700,
                          fontSize: 24,
                          // height: 1.0,
                          // letterSpacing: 0.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 24),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: filter.map((filter) {
                        final isSelected = filter == selectedFilter;
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedFilter = filter;
                              });
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: isSelected
                                  ? HexColor('#5436F8')
                                  : HexColor('#FFFFFF'),
                              foregroundColor: isSelected
                                  ? Colors.white
                                  : HexColor('#5436F8'),
                            ),
                            child: Text(
                              filter,
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                                height: 1.0,
                                letterSpacing: 0.0,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  currentIndex == 0
                      ? getFilteredContent(selectedFilter, anime)
                      : screens[currentIndex],
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: Material(
          color: HexColor('#F9F8FD'),
          elevation: 0.0,
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 14),
              height: 98,
              width: 374,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomNavItem(
                    iconData: SvgPicture.asset('assets/images/home.svg'),
                    label: 'Home',
                    isSelected: currentIndex == 0,
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                    },
                  ),
                  CustomNavItem(
                    iconData: SvgPicture.asset('assets/images/library.svg'),
                    label: 'Library',
                    isSelected: currentIndex == 1,
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                    },
                  ),
                  CustomNavItem(
                    iconData: SvgPicture.asset('assets/images/search.svg'),
                    label: 'Search',
                    isSelected: currentIndex == 2,
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                    },
                  ),
                  CustomNavItem(
                    iconData: SvgPicture.asset('assets/images/internet.svg'),
                    label: 'Internet',
                    isSelected: currentIndex == 3,
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                    },
                  ),
                  CustomNavItem(
                    iconData: SvgPicture.asset('assets/images/setting.svg'),
                    label: 'Setting',
                    isSelected: currentIndex == 4,
                    onTap: () {
                      setState(() {
                        currentIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBodyWidget() {
    return screens[currentIndex];
  }
}
