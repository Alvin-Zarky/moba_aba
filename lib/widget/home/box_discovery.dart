import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';

class BoxDiscovery extends StatelessWidget {
  final String title;
  const BoxDiscovery({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      width: width / 3.7,
      height: height * 3.7,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 85, 87, 232),
        borderRadius: BorderRadius.circular(13),
        border: Border.all(color: Colors.cyan, width: 2.3),
      ),
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 90),
            child: Text(
              title,
              style: kTextStyle.copyWith(height: 1.35),
            ),
          ),
        ],
      ),
    );
  }
}
