import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:news_app/TopListScreen/components/buildAppBar.dart';
import 'package:news_app/TopListScreen/components/buildHorizontalScroll.dart';
import 'package:news_app/TopOfTheWeekScreen/top_of_the_week_screen.dart';
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
      child: Column(
        children: <Widget>[
          SizedBox(height: size.height * 0.03),
          buildAppBar(size),
          SizedBox(height: size.height * 0.03),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            width: double.infinity,
            child: Image(
              fit: BoxFit.cover,
              image: AssetImage("assets/images/beautiful.png"),
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Text(
              "13 Work-Appropriate Vests That’ll Make Dressing",
              style: kHeadingTextStyle,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Text(
              "We Learned From the Men’s Fashion Week. We’re Officially Obsessed With Everything Drawstring",
              style: kDefaultTextStyle,
            ),
          ),
          SizedBox(height: size.height * 0.02),
          Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.06),
            child: Row(
              children: <Widget>[
                Text(
                  "Read More",
                  style: kDefaultTextStyle,
                ),
                SizedBox(width: size.width * 0.04),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TopOfTheWeekScreen(),
                      ),
                    );
                  },
                  child: SvgPicture.asset("assets/icons/right_arrow.svg"),
                ),
              ],
            ),
          ),
          SizedBox(height: size.height * 0.04),
          buildHorizontalScroll(),
          SizedBox(height: size.height * 0.04),
        ],
      ),
    );
  }
}
