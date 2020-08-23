import 'package:flutter/material.dart';
import 'package:news_app/constants.dart';

Container buildCard(Size size) {
  final List card = [
    "We Learned From the Men’s Fashion Week. We’re Officially Obsessed With Everything Drawstring",
    "We are getting antsy to get out of the cold and can’t wait for a beach trip next week! I was looking for some pretty flirty dresses and found so many cute",
    "Last Minute Valentine’s Gift Ideas for Him and Her. We are getting antsy to get out of the cold and can’t wait for a beach trip next week! I was looking for some pretty flirty dresses and found so many cute"
  ];

  return Container(
    height: 300.0,
    child: ListView.builder(
      itemCount: card.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(bottom: size.height * 0.02),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: kContainerColor.withOpacity(0.4),
                  blurRadius: 7.0,
                  spreadRadius: 2.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: size.width * 0.05),
                Container(
                  height: 50.0,
                  width: 3.0,
                  color: kContainerColor,
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size.width * 0.04,
                      vertical: size.height * 0.005,
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        card[index],
                        style: kDefaultTextStyle,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}
