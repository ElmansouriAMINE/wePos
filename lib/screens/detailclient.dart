import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class DetailClient extends StatelessWidget {
  const DetailClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                alignment: Alignment.bottomCenter,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFACCBE), Color(0xFFFEE8DD)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: IconButton(
                          icon: const Icon(Icons.menu), onPressed: () {}),
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/wePos_logo.png',
                        height: 170,
                        width: 120,
                      ),
                    ),
                    Container(
                      height: 90,
                      width: 70,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/mainImage.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Color.fromARGB(255, 148, 26, 79),
                          ),
                          onPressed: () {}),
                    ),
                    Text('Détails clients',
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Color(0xFF967195),
                        )),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 45,
                        right: 20,
                        left: 20,
                        bottom:
                            120), // Adjust the value as needed to position the container below the image
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height -
                          150, // Adjust the height as needed for the container

                      child: Stack(
                        children: [
                          Container(
                            height: 520, // Adjust the height of the Container
                            width: 390, // Adjust the width of the Container
                            decoration: BoxDecoration(
                                // gradient: const LinearGradient(
                                //   colors: [Colors.pink, Colors.purple],
                                // ),
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(28),
                                border: Border.all(
                                  color: Color(0xFFFEE8DD),
                                  width: 2.0,
                                )),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          // use the positioned widget to place
                          Positioned(
                            left: 45, // Adjust the position of the text
                            top: 65, // Adjust the position of the text
                            child: Center(
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "AMINE",
                                      style: TextStyle(
                                        color: Color(0xFF880E4F),
                                        fontFamily: 'LouisGeorgeCafe',
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "   ",
                                      style: TextStyle(
                                        color: Color(0xFF880E4F),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "ELMANSOURI",
                                      style: TextStyle(
                                        color: Color(0xFF880E4F),
                                        fontFamily: 'LouisGeorgeCafe',
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 45, // Adjust the position of the text
                            top: 85, // Adjust the position of the text
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8.0,
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "jdjsdsjdjsjd dsjdsjdj",
                                        style: TextStyle(
                                          color: Color(0xFF880E4F),
                                          fontFamily: 'LouisGeorgeCafe',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "   ",
                                        style: TextStyle(
                                          color: Color(0xFF880E4F),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: "ELMANSOURI",
                                        style: TextStyle(
                                          color: Color(0xFF880E4F),
                                          fontFamily: 'LouisGeorgeCafe',
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Text Elements with the same start (left) value

                          Positioned(
                            left: 45, // Adjust the position of the text
                            top: 145, // Adjust the position of the text
                            child: Center(
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.phone_android,
                                        color: Color.fromARGB(255, 148, 26, 79),
                                      ),
                                      onPressed: () {}),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "+212 60000000",
                                          style: TextStyle(
                                            color: Color(0xFF880E4F),
                                            fontFamily: 'LouisGeorgeCafe',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            left: 45, // Adjust the position of the text
                            top: 170, // Adjust the position of the text
                            child: Center(
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.email,
                                        color: Color.fromARGB(255, 148, 26, 79),
                                      ),
                                      onPressed: () {}),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "LOLLLLLLLLLLLLLLLL",
                                          style: TextStyle(
                                            color: Color(0xFF880E4F),
                                            fontFamily: 'LouisGeorgeCafe',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            left: 45, // Adjust the position of the text
                            top: 220, // Adjust the position of the text
                            child: Center(
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.grade,
                                        color: Color.fromARGB(255, 148, 26, 79),
                                      ),
                                      onPressed: () {}),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "A+",
                                          style: TextStyle(
                                            color: Color(0xFF880E4F),
                                            fontFamily: 'LouisGeorgeCafe',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            left: 45, // Adjust the position of the text
                            top: 195, // Adjust the position of the text
                            child: Center(
                              child: Row(
                                children: [
                                  IconButton(
                                      icon: const Icon(
                                        Icons.place,
                                        color: Color.fromARGB(255, 148, 26, 79),
                                      ),
                                      onPressed: () {}),
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "CCCCCCCCCCCCCCCCCCC",
                                          style: TextStyle(
                                            color: Color(0xFF880E4F),
                                            fontFamily: 'LouisGeorgeCafe',
                                            fontWeight: FontWeight.w900,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 60,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          100), // Adjust the value as needed for the rounded corner
                      child: Image.asset(
                        'assets/images/test.png', // Replace this with the path to your image
                        width:
                            100, // Adjust the width of the rounded image as needed
                        height:
                            100, // Adjust the height of the rounded image as needed
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  /// le button modifier
                  Positioned(
                    top: 340,
                    left: 90,
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink[900],
                        borderRadius: BorderRadius.circular(26),
                      ),
                      child: Center(
                        child: Text(
                          "Modifier",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'LouisGeorgeCafe',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    top: 415,
                    left: 90,
                    child: Container(
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(26),
                          border: Border.all(
                            color: Color(0xFFBE9182),
                            width: 2.0,
                          )),
                      child: Center(
                        child: Text(
                          "Supprimer",
                          style: TextStyle(
                            color: Color(0xFFBE9182),
                            fontSize: 18,
                            fontFamily: 'LouisGeorgeCafe',
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text('Details Page'),
  //     ),
  //     body: Stack(
  //       children: [
  //         Padding(
  //           padding: EdgeInsets.only(
  //               top:
  //                   150), // Adjust the value as needed to position the container below the image
  //           child: Container(
  //             width: MediaQuery.of(context).size.width,
  //             height: MediaQuery.of(context).size.height -
  //                 150, // Adjust the height as needed for the container
  //             color: Colors
  //                 .grey, // You can set the desired background color for the container
  //             child: Column(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               crossAxisAlignment: CrossAxisAlignment.center,
  //               children: [
  //                 // Add your details widgets here
  //                 Text(
  //                   'Name: John Doe',
  //                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
  //                 ),
  //                 Text(
  //                   'Age: 30',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //                 Text(
  //                   'Occupation: Engineer',
  //                   style: TextStyle(fontSize: 18),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         Positioned(
  //           top: 70,
  //           left: 0,
  //           child: ClipRRect(
  //             borderRadius: BorderRadius.circular(
  //                 100), // Adjust the value as needed for the rounded corner
  //             child: Image.asset(
  //               'assets/images/test.png', // Replace this with the path to your image
  //               width: 100, // Adjust the width of the rounded image as needed
  //               height: 100, // Adjust the height of the rounded image as needed
  //               fit: BoxFit.cover,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
