import 'package:flutter/material.dart';

class NewScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Basic'),
      ),
      // drawer: Mydrawer(),
      body: Center(
        child: Text('new screen World'),
      ),
    );
  }
}
