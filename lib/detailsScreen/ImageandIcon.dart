import 'package:flutter/material.dart';

import '../Color/Colors.dart';
import 'iconCard.dart';

class ImageandIcon extends StatelessWidget {
  const ImageandIcon({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back)),
                ),
                const Spacer(),
                const IconCard(
                  Image: "assets/icons/sun.svg",
                ),
                const IconCard(
                  Image: "assets/icons/icon_2.svg",
                ),
                const IconCard(
                  Image: "assets/icons/icon_3.svg",
                ),
                const IconCard(
                  Image: "assets/icons/icon_4.svg",
                ),
              ],
            )),
            Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: const Radius.circular(63),
                      bottomLeft: const Radius.circular(63),
                    ),
                    boxShadow: [
                      BoxShadow(
                          offset: const Offset(0, 10),
                          color: kPrimaryColor.withOpacity(0.29),
                          blurRadius: 60)
                    ],
                    image: const DecorationImage(
                        alignment: Alignment.centerLeft,
                        image: const AssetImage("assets/images/img.png"),
                        fit: BoxFit.cover)))
          ],
        ),
      ),
    );
  }
}
