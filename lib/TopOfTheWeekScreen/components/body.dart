import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/TopOfTheWeekScreen/components/buildAppBar.dart';
import 'package:news_app/TopOfTheWeekScreen/components/buildCard.dart';
import 'package:news_app/constants.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
        child: Column(
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            buildAppBar(),
            SizedBox(height: size.height * 0.03),
            buildCard(size),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                height: 282,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/two_women.png"),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: size.height * 0.25,
                    left: size.width * 0.04,
                    right: size.width * 0.04,
                  ),
                  child: Text(
                    "6 Trends That Ruled the Runways at New York Fashion Week Fall",
                    style: kHeadingTextStyle,
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height * 0.02),
            Text(
              "We Learned From the Men’s Fashion Week. We’re Officially Obsessed With Everything Drawstring",
              style: kDefaultTextStyle,
            ),
            SizedBox(height: size.height * 0.02),
            Row(
              children: <Widget>[
                Text(
                  "Read More",
                  style: kDefaultTextStyle,
                ),
                SizedBox(width: size.width * 0.03),
                SvgPicture.asset("assets/icons/right_arrow.svg"),
              ],
            ),
            SizedBox(height: size.height * 0.02),
          ],
        ),
      ),
    );
  }
}
