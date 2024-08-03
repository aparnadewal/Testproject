import 'package:flutter/material.dart';

import '../Widgets/bottom_bar.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Hello Coming soon")
        ],
      ),
      bottomNavigationBar: bottomBar(context: context, index: 1),
    );
  }
}
