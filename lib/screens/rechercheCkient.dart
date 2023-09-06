import 'package:flutter/material.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/screens/HoverButton.dart';
import 'package:wepos/screens/mybutton.dart';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';

import 'package:iconsax/iconsax.dart';

class RechercheClientUI extends StatefulWidget {
  const RechercheClientUI({super.key});

  @override
  State<RechercheClientUI> createState() => _MessagerieState();
}

class _MessagerieState extends State<RechercheClientUI>
    with SingleTickerProviderStateMixin {
  final _globalkey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _produits = TextEditingController();
  TextEditingController _services = TextEditingController();
  String _image =
      'https://ouch-cdn2.icons8.com/84zU-uvFboh65geJMR5XIHCaNkx-BZ2TahEpE9TpVJM/rs:fit:784:784/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvODU5/L2E1MDk1MmUyLTg1/ZTMtNGU3OC1hYzlh/LWU2NDVmMWRiMjY0/OS5wbmc.png';
  late AnimationController loadingController;

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom, allowedExtensions: ['png', 'jpg', 'jpeg']);

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }

    loadingController.forward();
  }

  @override
  void initState() {
    loadingController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(children: [
        const SizedBox(
          height: 35,
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
              Text('Clients (e)',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: kUIName,
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        produitsTextField(),
        SizedBox(
          height: 20,
        ),
        servicesTextField(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 19.0, right: 19.0),
          child: SizedBox(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 45, // Adjust the height of the Container
                    width: 390, // Adjust the width of the Container
                    decoration: BoxDecoration(
                      // gradient: const LinearGradient(
                      //   colors: [Colors.pink, Colors.purple],
                      // ),
                      color: KMainColor,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: KBorderColor,
                        width: 2,
                      ),
                    ),
                  ),
                ),

                // use the positioned widget to place

                ///for percent indicator for gender

                Positioned(
                  child: Center(
                    child: Expanded(
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 22.0, left: 22.0, top: 10.0, bottom: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Dernière Achats",
                                style: TextStyle(
                                  color: Color(0xFF718696),
                                  fontFamily: wePosfontFamily,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // Icon(
                              //   Icons.calendar_month,
                              //   color: Color(0xFF718696),
                              // ),
                              Transform.scale(
                                scale: 1.2,
                                child: Image.asset(
                                    'assets/images/calendrier.png',
                                    color: Color(0xFF718696)),
                              ),
                            ],
                          ),
                        ),
                        // SizedBox(
                        //   height: 2,
                        // ),
                        // Padding(
                        //     padding: const EdgeInsets.all(8.0),
                        //     child: Text("")),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        DropdownButtonCSP(),
        SizedBox(
          height: 12,
        ),
        DropdownButtonVille(),
        SizedBox(
          height: 12,
        ),

        const SizedBox(
          height: 2,
        ),
        Padding(
          padding: const EdgeInsets.all(35.0),
          child: SizedBox(
            child: Stack(
              children: [
                Center(
                  child: Container(
                    height: 160, // Adjust the height of the Container
                    width: 390, // Adjust the width of the Container
                    decoration: BoxDecoration(
                      // gradient: const LinearGradient(
                      //   colors: [Colors.pink, Colors.purple],
                      // ),
                      color: KMainColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),

                // use the positioned widget to place

                ///for percent indicator for gender

                Positioned(
                  child: Center(
                    child: Expanded(
                        child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Nom,Prénom",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF718696),
                                fontFamily: wePosfontFamily,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Icon(Icons.create),
                            Transform.scale(
                              scale: 1.3,
                              child: Image.asset('assets/images/pen-line.png',
                                  color: Color(0xFF718696)),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Form(
                            key: _globalkey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // SizedBox(
                                //   height: 10,
                                // ),
                                nameTextField(),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),

        ///new Item

        // const SizedBox(
        //   height: 2,
        // ),

        Container(
          padding: EdgeInsets.only(top: 3, left: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            // border: Border(
            //   bottom: BorderSide(color: Colors.black),
            //   top: BorderSide(color: Colors.black),
            //   left: BorderSide(color: Colors.black),
            //   right: BorderSide(color: Colors.black),
            // )
          ),
          child: MaterialButton(
            minWidth: 160,
            height: 45,
            onPressed: () {},
            color: Color.fromARGB(255, 142, 20, 67),
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            child: Text(
              "Rechercher",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Colors.white),
            ),
          ),
        ),
      ]),
    ]);
  }

  Widget nameTextField() {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(15),
        // border: Border.all(
        //   color: const Color.fromARGB(255, 212, 144, 167),
        //   width: 2,
        // ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: _name,
          validator: (value) {
            if (value!.isEmpty) return "Name can't be empty";

            return null;
          },
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            // hintText: "Nom",
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }

  Widget produitsTextField() {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: KBorderColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: _produits,
          validator: (value) {
            if (value!.isEmpty) return "Produits can't be empty";

            return null;
          },
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Produits",
            hintStyle: TextStyle(
                color: Color(0xFF718696),
                fontFamily: wePosfontFamily,
                fontSize: 15,
                fontWeight: FontWeight.bold),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }

  Widget servicesTextField() {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: KBorderColor,
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: _services,
          validator: (value) {
            if (value!.isEmpty) return "Services can't be empty";

            return null;
          },
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Services",
            hintStyle: TextStyle(
                color: Color(0xFF718696),
                fontFamily: wePosfontFamily,
                fontSize: 15,
                fontWeight: FontWeight.bold),
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownButtonCSP extends StatefulWidget {
  const DropdownButtonCSP({super.key});

  @override
  State<DropdownButtonCSP> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonCSP> {
  static const List<String> list = <String>['Clients', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: KBorderColor,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  print('test');
                },
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: SizedBox.shrink(),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Color(0xFF718696),
                          fontFamily: wePosfontFamily,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child:
                  // Icon(Icons.arrow_downward)
                  Image.asset(
                'assets/images/arrow.png',
                color: Color(0xFF718696),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DropdownButtonVille extends StatefulWidget {
  const DropdownButtonVille({super.key});

  @override
  _DropdownButtonVilleState createState() => _DropdownButtonVilleState();
}

class _DropdownButtonVilleState extends State<DropdownButtonVille> {
  static const List<String> list = <String>[
    'CasaBlanca',
    'Rabat',
    'Marrakech',
    'Agadir'
  ];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        color: KMainColor,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: KBorderColor,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  print('test');
                },
                child: DropdownButton<String>(
                  value: dropdownValue,
                  icon: SizedBox.shrink(),
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple),
                  onChanged: (String? value) {
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items: list.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(
                          color: Color(0xFF718696),
                          fontFamily: wePosfontFamily,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset('assets/images/arrow.png',
                  color: Color(0xFF718696)),
            ),
          ],
        ),
      ),
    );
  }
}
