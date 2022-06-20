import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: const AssetImage("assets/images/logo.png"),
      alignment: AlignmentDirectional.center,
      width: MediaQuery.of(context).size.width / 2,
    );
  }
}
