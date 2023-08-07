import 'package:flutter/material.dart';
import 'package:wepos/screens/HoverButton.dart';
import 'package:wepos/screens/mybutton.dart';

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';

import 'package:iconsax/iconsax.dart';

class Messagerie extends StatefulWidget {
  const Messagerie({super.key});

  @override
  State<Messagerie> createState() => _MessagerieState();
}

class _MessagerieState extends State<Messagerie>
    with SingleTickerProviderStateMixin {
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
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child:
                    IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
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
              Text('Envoi massif',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xFF967195),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 12,
        ),
        DropdownButtonExample(),
        SizedBox(
          height: 12,
        ),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MyButton(label: "Whatsapp", myicon: Icons.menu, onTap: () => {}),
              MyButton(
                  label: "SMS", myicon: Icons.phone_android, onTap: () => {}),
              MyButton(label: "Email", myicon: Icons.mail, onTap: () => {}),
            ],
          ),
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
                      color: Color(0xFFFFF9F7),
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
                              "Votre texte",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.menu),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Text(
                            "sjnddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"),
                      ],
                    )),
                  ),
                ),
              ],
            ),
          ),
        ),

        ///new Item

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
                    height: 180, // Adjust the height of the Container
                    width: 390, // Adjust the width of the Container
                    decoration: BoxDecoration(
                      // gradient: const LinearGradient(
                      //   colors: [Colors.pink, Colors.purple],
                      // ),
                      color: Color(0xFFFFF9F7), //Color(0xFFFFF9F7)
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
                              "Documents",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.add),
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Center(
                          child: Expanded(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                GestureDetector(
                                  onTap: selectFile,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 100.0, vertical: 4.0),
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Image.asset(
                                            "assets/images/rounded_dotes.png",
                                            fit: BoxFit.cover,
                                            width: 80,
                                            height: 80,
                                          ),
                                        ),
                                        Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Icon(
                                                Iconsax.add,
                                                color: Color(0xFFFDDCD0),
                                                size: 60,
                                                // weight: 180,
                                                // opticalSize: 180,
                                                // grade: 180,
                                              ),
                                              SizedBox(
                                                height: 15,
                                              ),
                                              // Text(
                                              //   'Select your file',
                                              //   style: TextStyle(
                                              //       fontSize: 15, color: Colors.grey.shade400),
                                              // ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                _platformFile != null
                                    ? Container(
                                        padding: EdgeInsets.all(20),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Document sélectionné',
                                              style: TextStyle(
                                                color: Colors.grey.shade400,
                                                fontSize: 15,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                                padding: EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors
                                                            .grey.shade200,
                                                        offset: Offset(0, 1),
                                                        blurRadius: 3,
                                                        spreadRadius: 2,
                                                      )
                                                    ]),
                                                child: Row(
                                                  children: [
                                                    ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8),
                                                        child: Image.file(
                                                          _file!,
                                                          width: 70,
                                                        )),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Expanded(
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            _platformFile!.name,
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .black),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Text(
                                                            '${(_platformFile!.size / 1024).ceil()} KB',
                                                            style: TextStyle(
                                                                fontSize: 13,
                                                                color: Colors
                                                                    .grey
                                                                    .shade500),
                                                          ),
                                                          SizedBox(
                                                            height: 5,
                                                          ),
                                                          Container(
                                                              height: 5,
                                                              clipBehavior:
                                                                  Clip.hardEdge,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            5),
                                                                color: Colors
                                                                    .blue
                                                                    .shade50,
                                                              ),
                                                              child:
                                                                  LinearProgressIndicator(
                                                                value:
                                                                    loadingController
                                                                        .value,
                                                              )),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                  ],
                                                )),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            // MaterialButton(
                                            //   minWidth: double.infinity,
                                            //   height: 45,
                                            //   onPressed: () {},
                                            //   color: Colors.black,
                                            //   child: Text('Upload', style: TextStyle(color: Colors.white),),
                                            // )
                                          ],
                                        ))
                                    : Container(),
                                SizedBox(
                                  height: 0,
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
              "Envoyer",
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
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  static const List<String> list = <String>['Clients', 'Two', 'Three', 'Four'];
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: Color(0xFFFEE8DD),
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
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Icon(Icons.arrow_downward),
            ),
          ],
        ),
      ),
    );
  }
}
