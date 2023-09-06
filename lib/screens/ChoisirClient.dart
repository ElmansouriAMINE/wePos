import 'package:flutter/material.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/screens/splash/splash_screen.dart';

class ChoisirClient extends StatefulWidget {
  const ChoisirClient({super.key});

  @override
  State<ChoisirClient> createState() => _ChoisirClientState();
}

class _ChoisirClientState extends State<ChoisirClient> {
  int selectedClientIndex = -1;
  bool circular = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 55,
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
                      'Clients (e)',
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: wePosfontFamily,
                          fontWeight: FontWeight.w900,
                          fontStyle: FontStyle.normal,
                          fontSize: 25,
                          color: kUIName),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(
              //     horizontal: 20,
              //   ),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       Container(
              //           height: 45,
              //           width: 350,
              //           decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.circular(15),
              //             border: Border.all(
              //               color: const Color.fromARGB(255, 212, 144, 167),
              //               width: 2,
              //             ),
              //           ),
              //           child: TextField(
              //             onChanged: (value) {
              //               //serach value
              //             },
              //             decoration: InputDecoration(
              //               enabledBorder: InputBorder.none,
              //               focusedBorder: InputBorder.none,
              //               hintText: "Rechercher un client",
              //               prefixIcon: Icon(Icons.search),
              //               contentPadding: EdgeInsets.symmetric(
              //                 horizontal: 10,
              //                 vertical: 10,
              //               ),
              //             ),
              //           )),
              // Container(
              //   height: 45,
              //   width: 35,
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     shape: BoxShape.circle,
              //     border: Border.all(
              //       color: const Color.fromARGB(255, 212, 144, 167),
              //       width: 2,
              //     ),
              //   ),
              //   child: Image.asset(
              //     'assets/images/parameter.png',
              //     height: 170,
              //     width: 120,
              //   ),
              // ),
              //     ],
              //   ),
              // ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Transform.scale(
                    scale: 1.5,
                    child: Checkbox(
                      shape: const CircleBorder(),
                      activeColor: Color.fromARGB(232, 177, 221, 255),
                      checkColor: Color(0xFF0294FF), //
                      value: selectedClientIndex == selectedClientIndex,
                      onChanged: (value) {
                        setState(() {});
                      },
                    ),
                  ),
                  Text(
                    "Sélection toute",
                    style: TextStyle(
                      fontFamily: wePosfontFamily,
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Color(0xFF718696),
                    ),
                  )
                ],
              ),
              buildClientList("client 1", 'assets/images/mainImage.png'),
              buildClientList("client 2", 'assets/images/mainImage.png'),
              buildClientList("client 3", 'assets/images/mainImage.png'),
              buildClientList("client 4", 'assets/images/mainImage.png'),

              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  setState(() {
                    circular = true;
                  });
                },
                child: Center(
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink[900],
                      borderRadius: BorderRadius.circular(26),
                    ),
                    child: Center(
                      child: circular
                          ? CircularProgressIndicator()
                          : Text(
                              "Choisir",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: wePosfontFamily,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              )
            ],
          ),
        ],
      ),
    );
  }

  Container buildClientList(String nom, String imageUrl) {
    return Container(
        margin: const EdgeInsets.only(bottom: 8),
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 0.2),
        // decoration: BoxDecoration(
        //     color: const Color.fromARGB(255, 243, 236, 239),
        //     borderRadius: BorderRadius.circular(15)),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(
                  shape: const CircleBorder(),
                  activeColor: Color.fromARGB(232, 177, 221, 255),
                  checkColor: Color(0xFF0294FF),
                  value: selectedClientIndex == selectedClientIndex,
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
                Container(
                  height: 90,
                  width: 70,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 28),
                      height: 35,
                      width: 270,
                      decoration: BoxDecoration(
                        color: KMainColor,
                        border: Border.all(color: KBorderColor),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topLeft: Radius.circular(-15),
                          bottomLeft: Radius.circular(-15),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            nom,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                fontFamily: wePosfontFamily,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
