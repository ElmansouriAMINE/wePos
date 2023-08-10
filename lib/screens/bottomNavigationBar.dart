// import 'package:flutter/material.dart';
// import 'package:wepos/screens/splash/dashboard.dart';
// import 'package:wepos/screens/splash/splash_screen.dart';

// class Bottom extends StatefulWidget {
//   const Bottom({Key? key}) : super(key: key);

//   @override
//   State<Bottom> createState() => _BottomState();
// }

// class _BottomState extends State<Bottom> {
//   int index_color = 0;
//   List Screen = [Dashboard(), Dashboard(), Dashboard(), Dashboard()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Screen[index_color],
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.of(context)
//               .push(MaterialPageRoute(builder: (context) => SpalshScreen()));
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Color(0xff368983),
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10),
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: CircularNotchedRectangle(),
//         child: Padding(
//           padding: const EdgeInsets.only(top: 7.5, bottom: 27.5),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     index_color = 0;
//                   });
//                 },
//                 child: Icon(
//                   Icons.home,
//                   size: 30,
//                   color: index_color == 0 ? Color(0xff368983) : Colors.grey,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     index_color = 1;
//                   });
//                 },
//                 child: Icon(
//                   Icons.bar_chart_outlined,
//                   size: 30,
//                   color: index_color == 1 ? Color(0xff368983) : Colors.grey,
//                 ),
//               ),
//               SizedBox(width: 10),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     index_color = 2;
//                   });
//                 },
//                 child: Icon(
//                   Icons.account_balance_wallet_outlined,
//                   size: 30,
//                   color: index_color == 2 ? Color(0xff368983) : Colors.grey,
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     index_color = 3;
//                   });
//                 },
//                 child: Icon(
//                   Icons.person_outlined,
//                   size: 30,
//                   color: index_color == 3 ? Color(0xff368983) : Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:wepos/screens/accueil.dart';
import 'package:wepos/screens/ajouterClient.dart';
import 'package:wepos/screens/choiceui.dart';
import 'package:wepos/screens/detailclient.dart';
import 'package:wepos/screens/listeClients.dart';
import 'package:wepos/screens/listproduits.dart';
import 'package:wepos/screens/login.dart';
import 'package:wepos/screens/messagerie.dart';
import 'package:wepos/screens/nouvelleVente.dart';
import 'package:wepos/screens/rechercheCkient.dart';
import 'package:wepos/screens/signInOrUp.dart';
import 'package:wepos/screens/signup.dart';
import 'package:wepos/screens/splash/dashboard.dart';
import 'package:wepos/screens/splash/splash_screen.dart';
import 'package:wepos/screens/userprofile.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int index_color = 0;
  List<Widget> screen = [
    Accueil(),
    RechercheClientUI(),
    ListeClients(),
    NouvelleVente()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[index_color],
      // floatingActionButton: SizedBox(
      //   child: FloatingActionButton(
      //     onPressed: () {
      //       Navigator.of(context).push(
      //         MaterialPageRoute(builder: (context) => SpalshScreen()),
      //       );
      //     },
      //     child: Icon(
      //       Icons.add,
      //       color: const Color.fromRGBO(136, 14, 79, 1),
      //     ),
      //     backgroundColor: Colors.white,
      //     shape: CircleBorder(),
      //   ),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Padding(
              padding: const EdgeInsets.only(top: 11.5, bottom: 25.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index_color = 0;
                      });
                    },
                    child: Icon(
                      Icons.home,
                      size: 30,
                      color: index_color == 0
                          ? Color.fromRGBO(136, 14, 79, 1)
                          : Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index_color = 1;
                      });
                    },
                    child: Icon(
                      Icons.people,
                      size: 30,
                      color: index_color == 1
                          ? Color.fromRGBO(136, 14, 79, 1)
                          : Colors.grey,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => AjouterClient(),
                        ),
                      );
                    },
                    child: Transform.scale(
                      scale:
                          3.2, // Adjust the scale factor to make the container larger
                      child: Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purple,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            size: 10, // Adjust the size of the icon
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index_color = 2;
                      });
                    },
                    child: Icon(
                      Icons.shopping_bag,
                      size: 30,
                      color: index_color == 2
                          ? Color.fromRGBO(136, 14, 79, 1)
                          : Colors.grey,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        index_color = 3;
                      });
                    },
                    child: Icon(
                      Icons.mail,
                      size: 30,
                      color: index_color == 3
                          ? Color.fromRGBO(136, 14, 79, 1)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
