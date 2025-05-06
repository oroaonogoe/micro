import 'package:flutter/material.dart';

class CustomLayoutBuilder extends StatelessWidget {
  final Widget webScreen;
  final Widget mobileScreen;
  const CustomLayoutBuilder({super.key, required this.webScreen, required this.mobileScreen});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return webScreen;
        } else {
          return mobileScreen;
        }
      },
    );
  }
}
