import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ui_design/features/presentations/screens/upgrade_plan.dart';

import '../widgets/custom_nav_bar.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 830,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      //background
                      child: Image.asset(
                        'assets/images/rectangle.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    //poster
                    Positioned(
                      left: 0,
                      top: 0,
                      right: 0,
                      // width: 376,
                      height: 519,
                      child: Image.asset(
                        'assets/images/demon_poster.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    //white circle
                    Positioned(
                      top: 435,
                      left: 115,
                      child: SvgPicture.asset('assets/images/ellipse3.svg'),
                    ),
                    //red shape
                    Positioned(
                      top: 430,
                      left: 180,
                      child: SvgPicture.asset('assets/images/ellipse6.svg'),
                    ),
                    //demon slayer
                    Positioned(
                      width: 300,
                      height: 120,
                      top: 440,
                      left: 45,
                      child: Column(
                        children: [
                          //text demon
                          Text(
                            'DEMON',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 48,
                              fontFamily: 'NewRocker',
                            ),
                          ),
                          //slayer
                          Text(
                            'SLAYER',
                            style: TextStyle(
                              fontSize: 36,
                              fontFamily: 'NewRocker',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // buttons
                    Positioned(
                      top: 595,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: WidgetStateProperty.all(0),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                        20),

                                  ),

                                ),
                                backgroundColor: WidgetStateProperty.all(
                                  Color(0x40D9D9D9),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Dark Fantasy',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                elevation: WidgetStateProperty.all(0),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                        20),

                                  ),

                                ),
                                backgroundColor: WidgetStateProperty.all(
                                  Color(0x40D9D9D9),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Action',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x66000000),
                                  blurRadius: 3,
                                  offset: Offset(0, 4),
                                  spreadRadius: 0,
                                ),
                              ],
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(

                                elevation: WidgetStateProperty.all(0),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                        20),

                                  ),

                                ),
                                backgroundColor: WidgetStateProperty.all(
                                  Color(0x40D9D9D9),
                                ),
                              ),
                              onPressed: () {},
                              child: Text(
                                'Adventure',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Raleway',
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //1- line after the buttons
                    Positioned(
                      top: 660,
                      left: 30,
                      child: Container(
                        width: 334,
                        height: 1,
                        color: Color(0xFF747272),

                        // color: Colors.white,

                      ),
                    ),
                    //views
                    Positioned(
                        width: 93,
                        height: 16,
                        top: 675,
                        left: 17,
                        child: Row(
                          children: [
                            //width: 17;
                            // height: 16;
                            // top: 666px;
                            // left: 17px;
                            // angle: 0 deg;
                            // opacity: 1;
                            SvgPicture.asset('assets/images/view.svg'),
                            Text(' 2.3M ', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),),
                            Text('views', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                            ),),
                          ],
                        )
                    ),
                    //clapping
                    Positioned(
                        width: 75,
                        height: 20,
                        top: 675,
                        left: 155,
                        child: Row(
                          children: [
                            SvgPicture.asset(
                                'assets/images/hands_clapping.svg'),
                            Text(' 2K ', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                            Text('clap', style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                            ),),
                          ],
                        )
                    ),
                    //season
                    Positioned(
                      width: 140,
                      height: 30,
                      top: 670,
                      left: 280,
                      // angle: 0 deg;
                      // opacity: 1;
                        child:Row(
                      children: [
                        SvgPicture.asset('assets/images/icon.svg',
                        width: 16,
                            height: 16,),
                        Text(' 4 ',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          color: Colors.white
                        ),),
                        Text('season',style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white,
                        ),)
                      ],
                    )),
                    //2-line
                    Positioned(
                      top: 710,
                      left: 30,

                      child: Container(
                        width: 334,
                        height: 2,
                        color: Color(0xFF747272),

                        // color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    //Final Text
                    Positioned(
                      width: 343,
                      height: 114,
                      top: 720,
                      left: 18,
                      // angle: 0 deg;
                      // opacity: 1;
                      // border-width: 1px;
                        child: Flexible(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0,top: 2),
                                child: SvgPicture.asset('assets/images/fire.svg'),
                              ),
                              Expanded(
                                child: Text(
                                    'Demon Slayer: Kimetsu no Yaiba follows Tanjiro, a kind-hearted boy who becomes a demon slayer after his family is slaughtered and his sister is turned into a demon. Experience breathtaking battles, stunning animation, and an emotional journey of courage and hope.                                            ',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Raleway',
                                    color: Colors.white
                                  ),
                                  softWrap: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),

                    // Align(
                    //   alignment: Alignment.bottomCenter,
                    //   widthFactor: 376,
                    //   heightFactor: 154,
                    //   // top: 730px;
                    //   // angle: 0 deg;
                    //   // opacity: 1;
                    //   child: SafeArea(
                    //
                    //     child: Container(
                    //       padding: EdgeInsets.all(12),
                    //       child: Row(
                    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //         children: [
                    //           ElevatedButton.icon(
                    //             onPressed: () {},
                    //             icon: Icon(Icons.chat),
                    //
                    //             label: Text('Chat'),
                    //           ),
                    //           ElevatedButton.icon(
                    //             onPressed: () {},
                    //             icon: Icon(Icons.person),
                    //             label: Text('Profile'),
                    //           ),
                    //         ],
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
          bottomNavigationBar: Container(
            width: 376,
            height: 100,
            color: HexColor('#16103C'),
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(
                          Color(0x40D9D9D9)
                      ),
                    fixedSize: WidgetStateProperty.all(Size(163, 44.38))
                  ),
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/images/icon.svg',color: Colors.white,),
                  label: Text('Preview', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton.icon(
                  style: ButtonStyle(
                      fixedSize: WidgetStateProperty.all(Size(163, 44.38)),
                    backgroundColor: WidgetStateProperty.all(
                      Color(0xFF6758FE),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UpgradePlan()),
                    );
                  },
                  icon: SvgPicture.asset('assets/images/watch.svg',color: Colors.white,),
                  label: Text('Watch', style: TextStyle(color: Colors.white)),

                ),
              ],
            ),
          ),

          // bottomNavigationBar: Material(
        //   color: HexColor('#F9F8FD'),
        //   elevation: 0.0,
        //   child: SafeArea(
        //     child: Container(
        //       padding: EdgeInsets.only(top: 7, bottom: 7, left: 14, right: 14),
        //       height: 98,
        //       width: 374,
        //       child: Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: [
        //           CustomNavItem(
        //             iconData: SvgPicture.asset('assets/images/home.svg'),
        //             label: 'Home',
        //             isSelected: currentIndex == 0,
        //             onTap: () {
        //               setState(() {
        //                 currentIndex = 0;
        //               });
        //             },
        //           ),
        //           CustomNavItem(
        //             iconData: SvgPicture.asset('assets/images/library.svg'),
        //             label: 'Library',
        //             isSelected: currentIndex == 1,
        //             onTap: () {
        //
        //             },
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),

      ),
    );
  }
}
