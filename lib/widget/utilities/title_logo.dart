import "package:flutter/material.dart";

class TitleLogo extends StatelessWidget {
  final String title;
  final String section;
  const TitleLogo({
    Key? key,
    required this.title,
    required this.section,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Inter",
            fontWeight: FontWeight.bold,
            fontSize: 25,
            letterSpacing: 3.2,
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 5, right: 5),
          child: const Text(
            "|",
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          section,
          style: const TextStyle(
            fontFamily: "Inter",
            fontSize: 26,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
