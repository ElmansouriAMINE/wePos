import 'package:flutter/material.dart';

class BegginingScreen extends StatefulWidget {
  const BegginingScreen({super.key});

  @override
  State<BegginingScreen> createState() => _BegginingScreenState();
}

class _BegginingScreenState extends State<BegginingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
          child: Container(
            decoration: BoxDecoration(color: Color(0xFFF5F5F5)),
          ),
        ),
        Container(
          height: 700,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/wePos_large_ic.png'),
                fit: BoxFit.cover,
                alignment: Alignment.center),
          ),
        ),
      ],
    );
  }
}
