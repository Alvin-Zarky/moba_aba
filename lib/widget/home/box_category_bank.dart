import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';

class BoxCategoryBank extends StatelessWidget {
  final IconData icon;
  final String title;
  const BoxCategoryBank({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: kColorIcon,
            size: 48,
          ),
          const SizedBox(
            height: 10,
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
