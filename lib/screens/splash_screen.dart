import 'package:flutter/material.dart';
import 'package:medical_ui_app/screens/home_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
//import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffcfeff).withOpacity(0.9), //Colors.grey[300],
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset("images/doctorSplash.png"),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xfffcfeff), //Color(0xfffcfeff), Color(0xffFFE0F4)
                borderRadius: BorderRadius.circular(30),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(),
                    Container(
                      padding: const EdgeInsets.only(left: 25, top: 25),
                      child: Text(
                        "All specialists in one app",
                        style: TextStyle(
                          color: Color(0xFF302f51),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "Find your doctor and make an \n appointment with on tap ",
                        style: TextStyle(
                          color: Color(0xFF302f51),
                          fontSize: 22,
                          letterSpacing: 0.6,
                        ),
                      ),
                    ),
                    SizedBox(height: 55),
                    // +++++++++++++++_______________++++++++++++++++++))))))))))
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: SwipeableButtonView(
                          buttonText: 'Get Started ',
                          buttontextstyle: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          buttonColor: Color(0xffFFE0F4),
                          buttonWidget: Container(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Color(0xFF302f51),
                            ),
                          ),
                          activeColor: Color(0xff8a86e2),
                          isFinished: isFinished,
                          onWaitingProcess: () {
                            Future.delayed(Duration(seconds: 1), () {
                              setState(() {
                                isFinished = true;
                              });
                            });
                          },
                          onFinish: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: HomeScreen(),
                              ),
                            );
                            setState(() {
                              isFinished = false;
                            });
                          },
                        ),
                      ),
                    )
                    // ========================================================
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
