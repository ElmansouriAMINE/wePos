import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final formKey = GlobalKey<FormState>(); //key for form
  String name = "";
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.black;
      }
      return Colors.white;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
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
            ),
            const SizedBox(
              width: 12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Form(
                key: formKey, //key for form
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2),
                    // Text(
                    //   "Here to Get",
                    //   style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                    // ),
                    // Text(
                    //   "Welcomed !",
                    //   style: TextStyle(fontSize: 30, color: Color(0xFF363f93)),
                    // ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Civilité",
                                hintStyle: TextStyle(
                                    color: Color(0xFF86044E), fontSize: 18),
                                fillColor: Color(0xFF86044E),
                                enabled: false),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                                return "enter correct name";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.purple,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked1,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked1 = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                            Text(
                              "Mr",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'LouisGeorgeCafe',
                                  color: Color(0xFFC9C9C9)),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.purple,
                              fillColor:
                                  MaterialStateProperty.resolveWith(getColor),
                              value: isChecked2,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked2 = value!;
                                });
                              },
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                            Text(
                              "Mme",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'LouisGeorgeCafe',
                                  color: Color(0xFFC9C9C9)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Prenom",
                        fillColor: Color(0xFF86044E),
                      ),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Nom", fillColor: Color(0xFF86044E)),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Adresse mail",
                          fillColor: Color(0xFF86044E)),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Téléphone", fillColor: Color(0xFF86044E)),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Ville", fillColor: Color(0xFF86044E)),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Mot de passe",
                          fillColor: Color(0xFF86044E)),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Confirmer le mot de passe",
                          fillColor: Color(0xFF86044E)),
                      style: TextStyle(color: Color(0xFF86044E)),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                          return "enter correct name";
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.purple,
                          fillColor:
                              MaterialStateProperty.resolveWith(getColor),
                          value: isChecked3,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked3 = value!;
                            });
                          },
                          shape: RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "J'accepte les conditions d'utilisation et la politique de confidentialité",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'LouisGeorgeCafe',
                                color: Color(0xFFA5A5A5)),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 90, right: 90),
                      child: MaterialButton(
                        minWidth: double.infinity,
                        height: 50,
                        onPressed: () {},
                        color: Color(0xFF86044E),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        child: Text(
                          "Confirmer",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
