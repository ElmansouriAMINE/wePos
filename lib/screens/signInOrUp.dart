import 'package:flutter/material.dart';
import 'package:wepos/screens/HoverButton.dart';

class SignInOrUp extends StatefulWidget {
  const SignInOrUp({super.key});

  @override
  State<SignInOrUp> createState() => _SignInOrUpState();
}

class _SignInOrUpState extends State<SignInOrUp> {
  bool isHoveredProduits = false;
  bool isHoveredButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            // padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            // alignment: Alignment.bottomCenter,
            height: 400,
            width: double.infinity,
            decoration: BoxDecoration(
              // gradient: LinearGradient(
              //   colors: [Color(0xFFFACCBE), Color(0xFFFEE8DD)],
              //   begin: Alignment.topLeft,
              //   end: Alignment.bottomRight,
              // ),
              // borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
              image: DecorationImage(
                image: AssetImage("assets/images/light_logo.png"),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 80,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/wepos3.png',
                    scale: 1.2,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          HoverButton(label: "Sign in", onTap: () => {}),
          SizedBox(
            height: 20,
          ),
          HoverButton(label: "Create an account", onTap: () => {}),
        ],
      ),
    );
  }
}
