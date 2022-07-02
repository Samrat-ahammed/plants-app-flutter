import 'package:flutter/material.dart';
import 'package:flutter_application_1/Color/Colors.dart';
import 'package:flutter_application_1/Screen/TitleCastomUnderline.dart';

class TitlewithMorebtn extends StatelessWidget {
  const TitlewithMorebtn({
    Key? key,
    required this.title,
    required this.press,
  }) : super(key: key);
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleCastomUnderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: kPrimaryColor,
              onPressed: press,
              child: Text(
                "More",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
