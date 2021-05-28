import 'package:flutter/material.dart';
import 'package:booking/design/constants.dart';

class HeaderDesign extends StatelessWidget {
  const HeaderDesign({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding ),
      // It will cover 15% of our total height
      height: size.height * 0.13,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top:  kDefaultPadding,
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 10 + kDefaultPadding,
            ),
            height: size.height * 13,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 10.0),
                Text(
                  'Select Route',
                  style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold, fontSize: 33),
                ),
                SizedBox(width: 90.0),
                Image.asset("assets/logo.jpg")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
