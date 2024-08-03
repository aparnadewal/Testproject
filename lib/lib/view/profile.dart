import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Align(
          alignment: Alignment.center,
          child: Text("Hello Coming soon")),
      bottomNavigationBar: bottomBar(context: context, index: 3),
    );
  }
}
