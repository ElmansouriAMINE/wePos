import 'package:flutter/material.dart';
import 'package:wepos/screens/drawer_item.dart';
import 'package:wepos/screens/people.dart';

class MyCustomDrawerShape extends ContinuousRectangleBorder {
  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    Path path = Path();
    path.moveTo(rect.left, rect.top);
    path.lineTo(rect.width - 40, rect.top);
    path.quadraticBezierTo(rect.right, rect.top, rect.right, rect.top + 40);
    path.lineTo(rect.right, rect.bottom - 40);
    path.quadraticBezierTo(
        rect.right, rect.bottom, rect.right - 40, rect.bottom);
    path.lineTo(rect.left, rect.bottom);
    path.close();
    return path;
  }
}

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: MyCustomDrawerShape(),
      child: Material(
        // color: Colors.black,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFACCBE), Color(0xFFFEE8DD)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
            child: SingleChildScrollView(
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    headerWidget(),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 390,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Color(0xFFFDDCD0))),
                      child: ExpansionTile(
                        title: Text('Organisme:',
                            style: TextStyle(
                                color: Color(0xFF86044E),
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 80.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Nom de l'organisme",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                                Text("Description de l'activité",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                                Text('Logo',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                                Text('Nom du gérant',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                                Text('GSM',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                                Text('Téléphone',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                                Text('Email',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xFF988678))),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                          Text('Link your organisme',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF988678))),
                          SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                circularImageContainer(
                                  onTap: () {},
                                  image: AssetImage('assets/images/logo1.png'),
                                  containerColor: Colors.white,
                                  borderColor: Color(0xFFBE9182),
                                  imageColor: Color(0xFF988678),
                                  imageSize: 20,
                                  containerSize: 35,
                                ),
                                circularImageContainer(
                                  onTap: () {},
                                  image: AssetImage('assets/images/logo2.png'),
                                  containerColor: Colors.white,
                                  borderColor: Color(0xFFBE9182),
                                  imageColor: Color(0xFF988678),
                                  imageSize: 20,
                                  containerSize: 35,
                                ),
                                circularImageContainer(
                                  onTap: () {},
                                  image: AssetImage('assets/images/logo3.png'),
                                  containerColor: Colors.white,
                                  borderColor: Color(0xFFBE9182),
                                  imageColor: Color(0xFF988678),
                                  imageSize: 20,
                                  containerSize: 35,
                                ),
                                circularImageContainer(
                                  onTap: () {},
                                  image: AssetImage('assets/images/logo4.png'),
                                  containerColor: Colors.white,
                                  borderColor: Color(0xFFBE9182),
                                  imageColor: Color(0xFF988678),
                                  imageSize: 20,
                                  containerSize: 35,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 390,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Color(0xFFFDDCD0))),
                      child: ExpansionTile(
                        title: Text('Gestion des services:',
                            style: TextStyle(
                                color: Color(0xFFCCB8A8),
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                        children: [],
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      width: 390,
                      decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.circular(28),
                          border: Border.all(color: Color(0xFFFDDCD0))),
                      child: ExpansionTile(
                        title: Text('Gestion des produits:',
                            style: TextStyle(
                                color: Color(0xFFCCB8A8),
                                fontSize: 13,
                                fontWeight: FontWeight.bold)),
                        children: [],
                      ),
                    ),
                    SizedBox(
                      height: 130,
                    ),
                    Container(
                      child: Image.asset(
                        'assets/images/wePos_logo.png',
                        height: 170,
                        width: 120,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget circularImageContainer({
    required VoidCallback onTap,
    required ImageProvider image,
    Color containerColor = Colors.white,
    Color borderColor = const Color(0xFFBE9182),
    Color imageColor = const Color(0xFF988678),
    double imageSize = 20,
    double containerSize = 40,
  }) {
    return GestureDetector(
      onTap: onTap,
      onTapCancel: () {},
      onTapDown: (TapDownDetails details) {},
      onTapUp: (TapUpDetails details) {},
      child: Container(
        width: containerSize,
        height: containerSize,
        decoration: BoxDecoration(
          color: containerColor,
          shape: BoxShape.circle,
          border: Border.all(
            color: borderColor,
            width: 1.0,
          ),
        ),
        child: Center(
          child: Image(
            image: image,
            width: imageSize,
            height: imageSize,
            color: imageColor,
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const People()));
        break;
    }
  }

  Widget headerWidget() {
    return Row(
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage("assets/images/mainImage.png"),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('AMINE',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFCCB8A8))),
            SizedBox(
              height: 10,
            ),
            Text('ELMANSOURI',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFCCB8A8)))
          ],
        )
      ],
    );
  }
}
