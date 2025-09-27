import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class UpgradePlan extends StatefulWidget {
  const UpgradePlan({super.key});

  @override
  State<UpgradePlan> createState() => _UpgradePlanState();
}

class _UpgradePlanState extends State<UpgradePlan> {
  bool isChecked = false;
  String selectedPlan = 'monthly';

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
              width: 388.42,
              height: 388.42,
              top: -140.07,
              left: -170.76,

              // angle: 42.01 deg;
              // opacity: 1;
              child: Transform.rotate(
                angle: 42.2 * (3.1415926535 / 180),
                child: Image.asset(
                  'assets/images/star1.png',
                  height: 388.42,
                  width: 388.42,
                ),
              ),
            ),
            Positioned(
              width: 238,
              height: 27,
              top: 67,
              left: 105,
              // angle: 0 deg;
              // opacity: 1;
              // gap: 66px;
              child: Row(
                children: [
                  Text(
                    'Upgrade Plan',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Raleway',
                      color: HexColor('#18153F'),
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0, left: 5),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.cancel, color: Colors.white, size: 27),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              width: 288.95,
              height: 288.95,
              top: 149,
              left: 260,
              child: Transform.rotate(
                angle: 79.74 * (3.1415926535 / 180),
                child: Image.asset(
                  'assets/images/star1.png',
                  height: 288.95,
                  width: 288.95,
                ),
              ),
            ),
            Positioned(
              width: 207,
              height: 207,
              top: 86,
              left: 90,
              // angle: 0 deg;
              // opacity: 1;
              child: Image.asset(
                'assets/images/rocket_boy.png',
                width: 207,
                height: 207,
              ),
            ),

            Positioned(
              width: 300,
              height: 150,
              top: 280,
              left: 60,
              // angle: 0 deg;
              // opacity: 1;
              // gap: 4px;
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Seamless Anime Experience, Ad-Free.',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 4),
                  Text(
                    'Enjoy unlimited anime streaming without interruptions.',
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: HexColor('#AEADB5')
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 420,
              left: 25,
              // gap: 16px;
              child: Column(
                children: [
                  Container(
                    width: 342,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Card(
                      color: HexColor('#18153F'),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/files_folders.png',
                            width: 108,
                            height: 108,
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'Monthly',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Raleway',
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    '\$5 USD',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Raleway',
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '/Month',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Raleway',
                                      color: HexColor('#A49AD8'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Include Family Sharing',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Raleway',
                                  color: HexColor('#A49AD8'),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              bottom: 50,
                            ),
                            child: Checkbox(
                              value: selectedPlan == 'monthly',
                              onChanged: (value) {
                                setState(() {
                                  selectedPlan = 'monthly';
                                });
                              },

                              checkColor: HexColor('#FFFFFF'),
                              activeColor: HexColor('#5436F8'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Container(
                    width: 342,
                    height: 115,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: Card(
                      color: HexColor('#FFFFFF'),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/files_folders.png',
                            width: 108,
                            height: 108,
                          ),
                          Column(
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5.0),
                                child: Text(
                                  'Annually',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: 'Raleway',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Text(
                                    '\$50 USD',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Raleway',
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text(
                                    '/Year',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Raleway',
                                      color: HexColor('#A49AD8'),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text(
                                'Include Family Sharing',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'Raleway',
                                  color: HexColor('#A49AD8'),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 35.0,
                              bottom: 50,
                            ),
                            child: Checkbox(
                              value: selectedPlan == 'annual',
                              onChanged: (value) {
                                setState(() {
                                  selectedPlan = 'annual';
                                });
                              },

                              checkColor: HexColor('#FFFFFF'),
                              activeColor: HexColor('#5436F8'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              width: 343,
              height: 70,
              top: 702,
              left: 16,

              // angle: 0 deg;
              // opacity: 1;
              // border-radius: 30px;
              // gap: 10px;
              child: Padding(
                padding: EdgeInsets.only(
                  top: 15,
                  right: 34,
                  bottom: 15,
                  left: 34,
                ),
                child: Container(

                  decoration: BoxDecoration(
                    color: HexColor('#5436F8'),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(

                      backgroundColor: WidgetStateProperty.all(
                        Color(0xFF6758FE),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
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
