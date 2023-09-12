import 'package:flutter/material.dart';
import 'package:wepos/screens/userprofile.dart';

class WePosAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const WePosAppBar({required this.scaffoldKey, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
      alignment: Alignment.bottomCenter,
      height: 120,
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
            child: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                // Get the current state of the Scaffold.
                ScaffoldState? scaffoldState = Scaffold.of(context);

                // If the Scaffold state is not null, then open the drawer.
                if (scaffoldState != null) {
                  scaffoldState.openDrawer();
                }
              },
            ),
          ),
          Container(
            child: Image.asset(
              'assets/images/wePos_logo.png',
              height: 170,
              width: 120,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => UserProfile(),
                ),
              );
            },
            child: Container(
              height: 90,
              width: 70,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Amine.jpeg'),
                  fit: BoxFit.cover,
                ),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Container(
          //   height: 90,
          //   width: 70,
          //   decoration: BoxDecoration(
          //     image: DecorationImage(
          //       image: AssetImage('assets/images/Amine.jpeg'),
          //       fit: BoxFit.cover,
          //     ),
          //     shape: BoxShape.circle,
          //   ),
          // ),
        ],
      ),
    );
  }
}
