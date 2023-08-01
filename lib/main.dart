// import 'package:flutter/material.dart';
// import 'package:wepos/constants.dart';
// import 'package:wepos/screens/splash/dashboard.dart';
// import 'package:wepos/screens/splash/splash_screen.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});
//   final _pageControlller = PageController();

//   @override
//   void dispose() {
//     _pageControlller.dispose();
//   }

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         fontFamily: "Muli",
//         textTheme: TextTheme(
//             bodyText1: TextStyle(color: kTextColor),
//             bodyText2: TextStyle(color: kTextColor)),
//         // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       // home: Dashboard(),
//       body: PageView(
//         controller: _pageControlller,
//         children: const <Widget>[
//           Dashboard(),
//           Dashboard(),
//           Dashboard(),
//         ],
//       ),
//       extendBody: true,
//       bottomNavigationBar: RollingBottomBar(
//         color: const Color.fromARGB(255, 255, 240, 219),
//         controller: _pageControlller,
//         flat: true,
//         useActiveColorByDefault: false,
//         items: const [
//           RollingBottomBarItem(Icons.home,
//               label: 'Home', activeColor: Colors.redAccent),
//           RollingBottomBarItem(Icons.camera,
//               label: 'Camera', activeColor: Colors.blueAccent),
//           RollingBottomBarItem(Icons.person,
//               label: 'Person', activeColor: Colors.green),
//         ],
//         enableIconRotation: true,
//         onTap: (index) {
//           _pageControlller.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 400),
//             curve: Curves.easeOut,
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';
import 'package:wepos/constants.dart';
import 'package:wepos/screens/bottomNavigationBar.dart';
import 'package:wepos/screens/splash/components/body.dart';
import 'package:wepos/screens/splash/dashboard.dart';
import 'package:wepos/screens/splash/splash_screen.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         fontFamily: "Muli",
//         textTheme: TextTheme(
//           bodyText1: TextStyle(color: kTextColor),
//           bodyText2: TextStyle(color: kTextColor),
//         ),
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       // home: Dashboard(),
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   final PageController _pageController = PageController();

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PageView(
//         controller: _pageController,
//         children: const <Widget>[
//           Dashboard(),
//           Dashboard(),
//           Dashboard(),
//           Dashboard(),
//           Dashboard(),
//         ],
//       ),
//       extendBody: true,
//       bottomNavigationBar: RollingBottomBar(
//         color: const Color.fromARGB(255, 255, 240, 219),
//         controller: _pageController,
//         flat: true,
//         useActiveColorByDefault: false,
//         items: const [
//           RollingBottomBarItem(Icons.home,
//               label: 'Home', activeColor: Colors.redAccent),
//           RollingBottomBarItem(Icons.camera,
//               label: 'Camera', activeColor: Colors.blueAccent),
//           RollingBottomBarItem(Icons.person,
//               label: 'Person', activeColor: Colors.green),
//           RollingBottomBarItem(Icons.person,
//               label: 'Person', activeColor: Colors.green),
//           RollingBottomBarItem(Icons.person,
//               label: 'Person', activeColor: Colors.green),
//         ],
//         enableIconRotation: true,
//         onTap: (index) {
//           _pageController.animateToPage(
//             index,
//             duration: const Duration(milliseconds: 400),
//             curve: Curves.easeOut,
//           );
//         },
//       ),
//     );
//   }
// }

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
