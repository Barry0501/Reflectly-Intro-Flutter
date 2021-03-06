import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:motion_widget/motion_widget.dart';

class IntroPageWithMotion extends StatefulWidget {
  @override
  _IntroPageWithMotionState createState() => _IntroPageWithMotionState();
}

class _IntroPageWithMotionState extends State<IntroPageWithMotion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF8185E2),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Motion<Column>(
                durationMs: 4000,
                children: <Widget>[
                  _buildAvatarGlow(),
                  _getItem(
                    Interval(0.25, 1),
                    child: Text(
                      "Hi There",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  _getItem(
                    Interval(0.625, 1.0),
                    child: Text(
                      "I'm Reflectly",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  _getItem(
                    Interval(0.7, 1),
                    child: Text(
                      "Your New Personal",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  _getItem(
                    Interval(0.8, 1),
                    child: Text(
                      "Journaling  companion",
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 100.0,
                  ),
                  _getItem(
                    Interval(0.9, 1),
                    child: GestureDetector(
                      child: Container(
                        height: 60,
                        width: 270,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.white,
                        ),
                        child: Center(
                          child: Text(
                            'Hi Reflectly',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF8185E2),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  _getItem(
                    Interval(0.95, 1.0),
                    child: Text(
                      "I Already have An Account".toUpperCase(),
                      style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  AvatarGlow _buildAvatarGlow() {
    return AvatarGlow(
      endRadius: 90,
      duration: Duration(seconds: 2),
      glowColor: Colors.white24,
      repeat: true,
      repeatPauseDuration: Duration(seconds: 2),
      startDelay: Duration(seconds: 1),
      child: Material(
          elevation: 8.0,
          shape: CircleBorder(),
          child: CircleAvatar(
            backgroundColor: Colors.grey[100],
            child: FlutterLogo(
              size: 50.0,
            ),
            radius: 50.0,
          )),
    );
  }

  MotionElement _getItem(Interval interval, {Widget child}) {
    return MotionElement(
      interval: interval,
      child: child,
    );
  }
}
