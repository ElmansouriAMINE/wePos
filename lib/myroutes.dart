import 'package:flutter/material.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/screens/begginingScreen.dart';
import 'package:wepos/screens/bottomNavigationBar.dart';
import 'package:wepos/screens/login.dart';
import 'package:wepos/screens/splash/splash_screen.dart';

class MyRoutes {
  static Route<dynamic> generateRoute(RouteSettings setting) {
    switch (setting.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => BegginingScreen());
      case '/second':
        return MaterialPageRoute(builder: (context) => SpalshScreen());
      case '/third':
        return MaterialPageRoute(builder: (context) => LoginPage());
      case '/fourth':
        return MaterialPageRoute(builder: (context) => Bottom());

      default:
    }

    return MaterialPageRoute(
      builder: (context) => Scaffold(
          body: Column(
        children: [
          SizedBox(
            height: 60,
            child: Container(
              decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
            ),
          ),
          GestureDetector(
            child: Container(
              height: 700,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/wePos_large_ic.png'),
                    fit: BoxFit.cover,
                    alignment: Alignment.center),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 380,
                  ),
                  Center(
                      child: Text(
                    'no route defined',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontFamily: wePosfontFamily,
                        fontWeight: FontWeight.w900,
                        fontSize: 45,
                        color: Colors.red),
                  )),
                ],
              ),
            ),
            onDoubleTap: () => Navigator.pushNamed(context, '/second'),
          ),
        ],
      )),
    );
  }
}
