import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/constants.dart';

Row buildAppBar() {
  return Row(
    children: <Widget>[
      SvgPicture.asset("assets/icons/menu.svg"),
      Spacer(),
      Text(
        "Top Of The Week",
        style: kHeadingTextStyle,
      ),
      Spacer(),
    ],
  );
}
