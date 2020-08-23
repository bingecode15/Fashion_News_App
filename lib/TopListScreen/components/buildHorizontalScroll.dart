import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/constants.dart';

Container buildHorizontalScroll() {
  final List card = [
    {
      "image": "assets/images/girl.png",
      "text":
          "6 Trends That Ruled \nthe Runways at New \nYork Fashion Week \nFall",
    },
    {
      "image": "assets/images/blonde.png",
      "text":
          "6 Trends That Ruled \nthe Runways at New \nYork Fashion Week \nFall",
    },
  ];

  return Container(
    height: 310.0,
    child: ListView.builder(
      itemCount: card.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 238,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(18.0),
            ),
            image: DecorationImage(
              image: AssetImage(card[index]["image"]),
            ),
          ),
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 15.0,
                left: 10.0,
                child: index == 0
                    ? Image(
                        image: AssetImage("assets/images/new_tag.png"),
                      )
                    : Container(),
              ),
              Positioned(
                bottom: 45.0,
                left: 20.0,
                child: Text(
                  card[index]["text"],
                  style: kHeadingTextStyle.copyWith(fontSize: 16.0),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 20.0,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Read More",
                      style: kDefaultTextStyle,
                    ),
                    SizedBox(width: 10.0),
                    SvgPicture.asset("assets/icons/right_arrow.svg"),
                  ],
                ),
              )
            ],
          ),
        );
      },
    ),
  );
}
