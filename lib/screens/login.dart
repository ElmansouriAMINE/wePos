import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wepos/screens/animation/FadeAnimation.dart';
import 'package:wepos/screens/motdepaaseoublie.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      FadeAnimation(
                        1,
                        Container(
                          height: 130,
                          width: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/wePos_logo.png'),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.2,
                          Text(
                            "Connectez-vous",
                            style: TextStyle(
                                fontSize: 35, color: Colors.grey[700]),
                          )),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.2, makeInput(label: "", hintText: "Email")),
                        FadeAnimation(
                            1.3,
                            makeInput(
                                label: "",
                                hintText: "Mot de passe",
                                obscureText: true)),
                      ],
                    ),
                  ),
                  FadeAnimation(
                      1.5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              // Add the action you want to perform when the text is clicked here.
                              // For example, you can navigate to the password recovery page.
                              // Replace 'PasswordRecoveryPage' with the actual page you want to navigate to.
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MotDePasseOublie(),
                                ),
                              );
                            },
                            child: Text(
                              "Mot de passe oublié?",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Colors
                                    .grey, // You can customize the color of the clickable text
                              ),
                            ),
                          ),
                        ],
                      )),
                  FadeAnimation(
                      1.4,
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        child: Container(
                          padding: EdgeInsets.only(top: 3, left: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                              )),
                          child: MaterialButton(
                            minWidth: double.infinity,
                            height: 60,
                            onPressed: () {},
                            color: Color.fromARGB(255, 142, 20, 67),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),
                            child: Text(
                              "Se connecter",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )),
                  // FadeAnimation(
                  //     1.5,
                  //     Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: <Widget>[
                  //         Text("Don't have an account?"),
                  //         Text(
                  //           "Sign up",
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.w600, fontSize: 18),
                  //         ),
                  //       ],
                  //     ))
                ],
              ),
            ),
            // FadeAnimation(
            //     1.2,
            //     Container(
            //       height: MediaQuery.of(context).size.height / 3,
            //       decoration: BoxDecoration(
            //           image: DecorationImage(
            //               image: AssetImage('assets/images/mainImage.png'),
            //               fit: BoxFit.cover)),
            //     ))
          ],
        ),
      ),
    );
  }

  Widget makeInput({label, hintText, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
