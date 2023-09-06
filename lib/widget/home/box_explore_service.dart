import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';

class BoxExploreService extends StatelessWidget {
  final String image;
  final String title;
  final String? subtitle;
  const BoxExploreService({
    Key? key,
    required this.image,
    required this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            height: 40,
            image: AssetImage(image),
          ),
          const SizedBox(
            height: 7,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: kTextStyle.copyWith(color: Colors.white),
              ),
              const SizedBox(height: 3),
              Text(
                subtitle ?? "",
                style: kTextStyle.copyWith(color: Colors.white),
              )
            ],
          ),
        ],
      ),
    );
  }
}
