import 'package:flutter/material.dart';
import 'package:wepos/constants.dart';

class choiceui extends StatefulWidget {
  const choiceui({super.key});

  @override
  State<choiceui> createState() => _choiceuiState();
}

class _choiceuiState extends State<choiceui> {
  bool isHoveredProduits = false;
  bool isHoveredService = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: [
          Column(
            children: [
              Image.asset(
                "assets/images/wePos2.png",
                scale: 0.2,
                alignment: Alignment.topCenter,
                width: double.infinity,
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/wepos3.png",
                scale: 0.9,
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your desired functionality when the container is clicked here
                    },
                    onTapCancel: () {
                      setState(() {
                        isHoveredProduits = false;
                      });
                    },
                    onTapDown: (TapDownDetails details) {
                      setState(() {
                        isHoveredProduits = true;
                      });
                    },
                    onTapUp: (TapUpDetails details) {
                      setState(() {
                        isHoveredProduits = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: isHoveredProduits
                            ? Color(0xFFCCB8A8)
                            : Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFFBE9182),
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Image.asset(
                                'assets/images/produit_logo.png',
                                scale: 0.8,
                                color: isHoveredProduits
                                    ? Color(0xFFFFFFFF)
                                    : Color(0xFFCCB8A8),
                              ),
                            ),
                            SizedBox(
                              height: 1.5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Produits",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: wePosfontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: isHoveredProduits
                                        ? Color(0xFFFFFFFF)
                                        : Color(0xFFCCB8A8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Add your desired functionality when the container is clicked here
                    },
                    onTapCancel: () {
                      setState(() {
                        isHoveredService = false;
                      });
                    },
                    onTapDown: (TapDownDetails details) {
                      setState(() {
                        isHoveredService = true;
                      });
                    },
                    onTapUp: (TapUpDetails details) {
                      setState(() {
                        isHoveredService = false;
                      });
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        color: isHoveredService
                            ? Color(0xFFCCB8A8)
                            : Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Color(0xFFBE9182),
                          width: 1.0,
                        ),
                      ),
                      child: Center(
                        child: Column(
                          children: [
                            Expanded(
                              flex: 3,
                              child: Image.asset(
                                'assets/images/service_logo.png',
                                scale: 0.8,
                                color: isHoveredService
                                    ? Color(0xFFFFFFFF)
                                    : Color(0xFFCCB8A8),
                              ),
                            ),
                            SizedBox(
                              height: 1.5,
                            ),
                            Expanded(
                              flex: 1,
                              child: Text(
                                "Service",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: wePosfontFamily,
                                    fontWeight: FontWeight.bold,
                                    color: isHoveredService
                                        ? Color(0xFFFFFFFF)
                                        : Color(0xFFCCB8A8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ]));
  }
}
