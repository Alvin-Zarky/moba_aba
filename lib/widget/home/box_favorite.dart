import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';

class BoxFavorite extends StatelessWidget {
  final String shortcut;
  final String name;
  const BoxFavorite({
    Key? key,
    required this.shortcut,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 3.5,
      // height: height / 3.5,
      height: height / 6.15,
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Stack(
        children: [
          SizedBox(
            child: CircleAvatar(
              child: SizedBox(
                child: Text(shortcut),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 67),
            child: Text(
              name,
              style: kTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
