import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/screens/navigation_drawer.dart';

class AjouterClient extends StatefulWidget {
  const AjouterClient({super.key});

  @override
  _CreatProfileState createState() => _CreatProfileState();
}

class _CreatProfileState extends State<AjouterClient> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool circular = false;
  PickedFile? _imageFile;
  final _globalkey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _prenom = TextEditingController();
  TextEditingController _gsm = TextEditingController();
  TextEditingController _csp = TextEditingController();
  TextEditingController _adresse = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _age = TextEditingController();
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: MyNavigationDrawer(),
      backgroundColor: Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 0,
          bottom: 8.0,
        ),
        child: Expanded(
          child: ListView(
            children: [
              Column(
                children: [
                  // MyNavBar(),
                  const SizedBox(
                    height: 10,
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
                          '  Ajouter Client',
                          textAlign: TextAlign.left,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontFamily: wePosfontFamily,
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: kUIName),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Form(
                      key: _globalkey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          imageProfile(),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(_name, "Nom", "Name can't be empty"),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(
                              _prenom, "Prénom", "Prénom can't be empty"),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(_age, "Age", "Age can't be empty"),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(_gsm, "GSM", "GSM can't be empty"),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(
                              _email, "Email", "Email can't be empty"),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(_csp, "CSP", "CSP can't be empty"),
                          SizedBox(
                            height: 20,
                          ),
                          MyInPutTextField(
                              _adresse, "Adresse", "Adresse can't be empty"),
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
                                width: 200,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.pink[900],
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Center(
                                  child: circular
                                      ? CircularProgressIndicator()
                                      : Text(
                                          "Enregistre",
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
                            height: 60,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget imageProfile() {
  //   return Center(
  //     child: Stack(children: <Widget>[
  //       CircleAvatar(
  //         radius: 50.0,
  //         backgroundImage:
  //             _imageFile == AssetImage("assets/images/mainImage.png")
  //                 ? AssetImage("assets/images/mainImage.png")
  //                 : AssetImage("assets/images/Icon-photo.png"),
  //       ),
  //       Positioned(
  //         bottom: 20.0,
  //         right: 20.0,
  //         child: InkWell(
  //           onTap: () {
  //             showModalBottomSheet(
  //               context: context,
  //               builder: ((builder) => bottomSheet()),
  //             );
  //           },
  //           child: Icon(
  //             Icons.camera_alt,
  //             color: Colors.pink[900],
  //             size: 28.0,
  //           ),
  //         ),
  //       ),
  //     ]),
  //   );
  // }

  Widget imageProfile() {
    return Center(
      child: Stack(
        children: <Widget>[
          Container(
            width: 100, // Adjust the width to your desired size
            height: 100, // Adjust the height to your desired size
            decoration: BoxDecoration(
              color: Color(0xFFFFFFFF),
              shape: BoxShape.circle,
            ),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                  context: context,
                  builder: ((builder) => bottomSheet()),
                );
              },
              child: Transform.scale(
                scale: 0.6,
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundImage:
                      _imageFile == AssetImage("assets/images/mainImage.png")
                          ? AssetImage("assets/images/mainImage.png")
                          : AssetImage("assets/images/Icon-photo.png"),
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: 20.0,
          //   right: 20.0,
          //   child: InkWell(
          //     onTap: () {
          //       showModalBottomSheet(
          //         context: context,
          //         builder: ((builder) => bottomSheet()),
          //       );
          //     },
          //     child: Icon(
          //       Icons.camera_alt,
          //       color: Colors.pink[900],
          //       size: 28.0,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget bottomSheet() {
    return Container(
      height: 100.0,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      child: Column(
        children: <Widget>[
          Text(
            "Choisir la photo de profile",
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            TextButton.icon(
              icon: Icon(Icons.camera),
              onPressed: () {
                takePhoto(ImageSource.camera);
              },
              label: Text("Camera"),
            ),
            TextButton.icon(
              icon: Icon(Icons.image),
              onPressed: () {
                takePhoto(ImageSource.gallery);
              },
              label: Text("Gallery"),
            ),
          ])
        ],
      ),
    );
  }

  void takePhoto(ImageSource source) async {
    final pickedFile = await _picker.pickImage(
      source: source,
    );
  }

  Widget MyInPutTextField(var myvar, String name, String errorMessage) {
    return Container(
      height: 45,
      width: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: const Color.fromARGB(255, 212, 144, 167),
          width: 2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: TextFormField(
          controller: myvar,
          validator: (value) {
            if (value!.isEmpty) return errorMessage;

            return null;
          },
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: name,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 10,
            ),
          ),
        ),
      ),
    );
  }

  // Container MyNavBar() {
  //   return Container(
  //     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
  //     alignment: Alignment.bottomCenter,
  //     height: 100,
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         colors: [Color(0xFFFACCBE), Color(0xFFFEE8DD)],
  //         begin: Alignment.topLeft,
  //         end: Alignment.bottomRight,
  //       ),
  //       borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
  //     ),
  //     child: Row(
  //       crossAxisAlignment: CrossAxisAlignment.center,
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Container(
  //           child: IconButton(
  //               icon: const Icon(Icons.menu),
  //               onPressed: () {
  //                 _scaffoldKey.currentState!.openDrawer();
  //               }),
  //         ),
  //         Container(
  //           child: Image.asset(
  //             'assets/images/wePos_logo.png',
  //             height: 170,
  //             width: 120,
  //           ),
  //         ),
  //         Container(
  //           height: 90,
  //           width: 70,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage('assets/images/Amine.jpeg'),
  //               fit: BoxFit.cover,
  //             ),
  //             shape: BoxShape.circle,
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
