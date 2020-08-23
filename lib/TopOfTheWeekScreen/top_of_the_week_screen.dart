import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/TopOfTheWeekScreen/components/body.dart';
import 'package:news_app/constants.dart';

class TopOfTheWeekScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Body(size: size),
      ),
    );
  }
}
