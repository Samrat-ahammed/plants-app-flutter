import 'package:flutter/material.dart';
import 'package:flutter_application_1/Color/Colors.dart';

import 'ImageandIcon.dart';
import 'iconCard.dart';

class Body1 extends StatelessWidget {
  const Body1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [ImageandIcon(size: size)],
        ),
      ),
    );
  }
}
