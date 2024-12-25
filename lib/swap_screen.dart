import 'package:flutter/material.dart';

class SwapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        title: Text('Swap'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Text('Swap Screen Coming Soon!',
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
