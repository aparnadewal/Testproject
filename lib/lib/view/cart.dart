import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widgets/bottom_bar.dart';

class CartScreen extends StatelessWidget {
   CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
          child: Text("Hello Coming soon")),
      bottomNavigationBar: bottomBar(context: context, index: 2),
    );
  }
}
