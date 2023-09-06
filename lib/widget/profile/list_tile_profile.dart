import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';

class ListTileProfile extends StatelessWidget {
  final IconData icon;
  final String title;
  const ListTileProfile({
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
          border: Border.all(color: const Color.fromARGB(255, 242, 242, 242))),
      padding: const EdgeInsets.only(left: 20, right: 20, top: 16, bottom: 16),
      margin: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: Colors.black,
                size: 25,
              ),
              const SizedBox(width: 13),
              Text(
                title,
                style: kTextTitleStyle.copyWith(
                    color: Colors.black, fontWeight: FontWeight.normal),
              )
            ],
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
