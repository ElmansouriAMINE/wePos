// import 'package:flutter/material.dart';
// import 'package:wepos/constants.dart';
// import 'package:wepos/size_config.dart';

// class Body extends StatefulWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: SizedBox(
//         width: double.infinity,
//         child: Column(
//           children: <Widget>[
//             Expanded(
//               flex: 3,
//               child: Column(
//                 children: <Widget>[
//                   Spacer(),
//                   Image.asset(
//                     'assets/images/wePos_logo.png',
//                     height: getProportionateScreenHeight(103.33),
//                     width: getProportionateScreenWidth(145.36),
//                   ),
//                   Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Transform.scale(
//                         scale: 1.4,
//                         child: Image.asset(
//                           'assets/images/circle.png',
//                           height: 582.86,
//                           width: double.infinity,
//                         ),
//                       ),
//                       Positioned.fill(
//                         child: PageView(
//                           controller: _pageController,
//                           children: <Widget>[
//                             buildPage(
//                               'assets/images/mainImage.png',
//                               'This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1This is page 1',
//                             ),
//                             buildPage(
//                               'assets/images/mainImage.png',
//                               'This is page 2',
//                             ),
//                             buildPage(
//                               'assets/images/mainImage.png',
//                               'This is page 3',
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                   // Image.asset(
//                   //   'assets/images/circle.png',
//                   //   height: getProportionateScreenHeight(2882.86),
//                   //   width: getProportionateScreenWidth(2675.04),
//                   // ),

//                   Spacer(),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(
//                       3,
//                       (index) => buildDot(index == _currentPage),
//                     ),
//                   ),
//                   Spacer(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildPage(String imagePath, String description) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 80,
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: <Widget>[
//             Container(
//               height: 200,
//               width: 400,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage(imagePath),
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 30.0),
//               child: Text(
//                 description,
//                 textAlign: TextAlign.center,
//                 textScaler: TextScaler.linear(0.8),
//                 style: TextStyle(fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget buildDot(bool isActive) {
//     return Container(
//       width: 10,
//       height: 10,
//       margin: EdgeInsets.all(15),
//       decoration: BoxDecoration(
//         color: isActive ? Colors.black : Colors.grey,
//         shape: BoxShape.circle,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/size_config.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Image.asset(
                    'assets/images/wePos_logo.png',
                    height: getProportionateScreenHeight(103.33),
                    width: getProportionateScreenWidth(145.36),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Transform.scale(
                        scale: 1.4,
                        child: Image.asset(
                          'assets/images/circle.png',
                          height: 582.86,
                          width: double.infinity,
                        ),
                      ),
                      Positioned.fill(
                        child: PageView(
                          controller: _pageController,
                          onPageChanged: (int page) {
                            setState(() {
                              _currentPage = page;
                            });
                          },
                          children: <Widget>[
                            buildPage(
                              'assets/images/mainImage.png',
                              'This is page 1...',
                            ),
                            buildPage(
                              'assets/images/mainImage.png',
                              'This is page 2...',
                            ),
                            buildPage(
                              'assets/images/mainImage.png',
                              'This is page 3...',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => buildDot(index == _currentPage),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: List.generate(
            //     3,
            //     (index) => buildDot(index == _currentPage),
            //   ),
            // ),
            // SizedBox(
            //   height: 222,
            // ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String imagePath, String description) {
    return Column(
      children: [
        SizedBox(height: 80),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 200,
              width: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 5), // Adjust spacing here
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
