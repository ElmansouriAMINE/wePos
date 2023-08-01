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
                      Image.asset(
                        'assets/images/circle.png',
                        height: 582.86,
                        width: 575.04,
                      ),
                      Positioned.fill(
                        child: PageView(
                          controller: _pageController,
                          children: <Widget>[
                            buildPage(
                              'assets/images/mainImage.png',
                              'This is page 1',
                            ),
                            buildPage(
                              'assets/images/mainImage.png',
                              'This is page 2',
                            ),
                            buildPage(
                              'assets/images/mainImage.png',
                              'This is page 3',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // Image.asset(
                  //   'assets/images/circle.png',
                  //   height: getProportionateScreenHeight(2882.86),
                  //   width: getProportionateScreenWidth(2675.04),
                  // ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => buildDot(index == _currentPage),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPage(String imagePath, String description) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: getProportionateScreenHeight(282.86),
          width: getProportionateScreenWidth(175.04),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget buildDot(bool isActive) {
    return Container(
      width: 10,
      height: 10,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: isActive ? Colors.black : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}
