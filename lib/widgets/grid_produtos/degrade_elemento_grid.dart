import 'package:flutter/material.dart';

class DegradeElementoGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.deepPurple[100],
          ]
        )
      ),
    );
  }
}
