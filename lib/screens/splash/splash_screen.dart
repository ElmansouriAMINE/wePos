import 'package:flutter/material.dart';
import 'package:wepos/screens/splash/components/body.dart';
import 'package:wepos/size_config.dart';

class SpalshScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
