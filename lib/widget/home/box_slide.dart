import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';

class BoxSlide extends StatelessWidget {
  final IconData icon;
  final String title;
  const BoxSlide({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 19, right: 19),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: kColorIcon,
            size: 23,
          ),
          const SizedBox(
            width: 13,
          ),
          Text(
            title,
            style: kTextStyle,
          )
        ],
      ),
    );
  }
}
