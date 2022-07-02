import 'package:flutter/material.dart';
import 'package:flutter_application_1/Color/Colors.dart';
import 'package:flutter_application_1/Screen/TitleCastomUnderline.dart';
import 'package:flutter_application_1/Screen/TitlewithMorebtn.dart';

import 'Fetureplants.dart';
import 'HeadersearchBox.dart';
import 'Recomandedplants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeadersearchBox(size: size),
          TitlewithMorebtn(
            title: "Recomanded",
            press: () {},
          ),
          Recomandedplants(),
          TitlewithMorebtn(title: "FeturePlan", press: () {}),
          Fetureplants(),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
