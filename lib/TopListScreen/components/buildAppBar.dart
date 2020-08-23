import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/constants.dart';

Padding buildAppBar(Size size) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SvgPicture.asset("assets/icons/menu.svg"),
        Text(
          "Top List",
          style: kHeadingTextStyle,
        ),
        SvgPicture.asset("assets/icons/left_arrow.svg"),
      ],
    ),
  );
}
