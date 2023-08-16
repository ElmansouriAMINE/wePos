import 'package:flutter/material.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/screens/splash/splash_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedClientIndex = -1;

  Container buildClientList() {
    return Container(
      child: Row(
        children: [
          Checkbox(
            shape: const CircleBorder(),
            value: selectedClientIndex == selectedClientIndex,
            onChanged: (value) {
              setState(() {});
            },
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: 335,
            padding: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              color: const Color(0xFFFFF9F7),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Color(0xFFFDDCD0)),
            ),
            child: Row(
              children: [
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
                const SizedBox(width: 12),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "AMINE ELMANSOURI",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          color: Colors.black),
                    ),
                    Text(
                      "HOLA QUESTA",
                      style: TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          fontSize: 12,
                          color: Colors.black),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 68.0),
        child: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => SpalshScreen()),
              );
            },
            child: Icon(
              Icons.person_add_alt_1_outlined,
              size: 32,
              color: const Color(0xFF718696),
            ),
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFFFEEFE8),
            shape: CircleBorder(),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
                height: 25,
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
                    Text(
                      'Liste de clientes',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'LouisGeorgeCafe',
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Color.fromARGB(255, 172, 70, 190)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: 45,
                        width: 280,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: const Color.fromARGB(255, 212, 144, 167),
                            width: 2,
                          ),
                        ),
                        child: TextField(
                          onChanged: (value) {
                            //serach value
                          },
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Rechercher un client",
                            prefixIcon: Icon(Icons.search),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 10,
                            ),
                          ),
                        )),
                    Container(
                      height: 45,
                      width: 35,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 212, 144, 167),
                          width: 2,
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/parameter.png',
                        height: 170,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              buildClientList(),
              buildClientList(),
              buildClientList(),
              buildClientList(),
              buildClientList(),
              buildClientList(),
              buildClientList(),
              buildClientList(),
              buildClientList(),
            ],
          ),
        ],
      ),
    );
  }

  // Container buildClientList() {
  //   return Container(
  //       margin: const EdgeInsets.only(bottom: 8),
  //       width: 350,
  //       padding: const EdgeInsets.symmetric(horizontal: 25),
  //       decoration: BoxDecoration(
  //           color: const Color.fromARGB(255, 243, 236, 239),
  //           borderRadius: BorderRadius.circular(15)),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           Row(
  //             children: [
  //               Container(
  //                 height: 90,
  //                 width: 70,
  //                 decoration: BoxDecoration(
  //                   image: DecorationImage(
  //                     image: AssetImage('assets/images/mainImage.png'),
  //                     fit: BoxFit.cover,
  //                   ),
  //                   shape: BoxShape.circle,
  //                 ),
  //               ),
  //               const SizedBox(
  //                 width: 12,
  //               ),
  //               Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 crossAxisAlignment: CrossAxisAlignment.start,
  //                 children: const [
  //                   Text(
  //                     "AMINE ELMANSOURI",
  //                     style: TextStyle(
  //                         fontSize: 20,
  //                         fontWeight: FontWeight.bold,
  //                         color: Colors.black),
  //                   ),
  //                   Text(
  //                     "HOLA QUESTA",
  //                     style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: 12,
  //                         color: Colors.black),
  //                   ),
  //                 ],
  //               ),
  //             ],
  //           ),
  //         ],
  //       ));
  // }
}
