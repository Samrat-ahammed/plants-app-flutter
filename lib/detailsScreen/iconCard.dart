import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Color/Colors.dart';

class IconCard extends StatelessWidget {
  const IconCard({
    Key? key,
    required this.Image,
  }) : super(key: key);
  final Image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: 62,
      width: 62,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, 15),
              blurRadius: 22,
              color: kPrimaryColor.withOpacity(0.22)),
          BoxShadow(
              offset: Offset(-10, -15), blurRadius: 20, color: Colors.white)
        ],
      ),
      child: SvgPicture.asset(Image),
    );
  }
}
