import 'package:flutter/material.dart';
import 'package:flutter_application_1/Color/Colors.dart';
import 'package:flutter_application_1/Screen/body.dart';

import 'bottomNavigationBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(),
      body: Body(),
      bottomNavigationBar: bottomNavigationBar(),
    );
  }

  AppBar BuildAppBar() {
    return AppBar(
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    );
  }
}
