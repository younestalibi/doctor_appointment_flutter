import "package:flutter/material.dart";
import "package:flutter_application_1/utils/config.dart";

class Button extends StatelessWidget {
  const Button(
      {super.key,
      required this.width,
      required this.title,
      required this.onPreesed,
      required this.disable});

  final double width;
  final String title;
  final bool disable;
  final Function() onPreesed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Config.primaryColor,
              foregroundColor: Colors.white),
          onPressed: disable ? null : onPreesed,
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}
