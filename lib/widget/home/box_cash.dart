import "package:flutter/material.dart";
import "dart:math" as math;

import 'package:moba_aba/constant/constant.dart';

class BoxCash extends StatelessWidget {
  const BoxCash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 33),
      padding: const EdgeInsets.all(11),
      decoration: kContainerStyle,
      child: Container(
        padding:
            const EdgeInsets.only(left: 20, right: 20, top: 23, bottom: 23),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(17)),
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  "\$2980.90",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.8,
                    fontSize: 25,
                    color: Color.fromARGB(255, 72, 72, 72),
                  ),
                ),
                const SizedBox(
                  width: 13,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: const Color.fromARGB(46, 83, 142, 190)),
                  child: const Icon(
                    Icons.visibility_off_outlined,
                    color: Color.fromARGB(255, 55, 109, 189),
                    size: 20,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 9, right: 9, top: 3, bottom: 3),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 39, 199, 239),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Default",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: "Inter",
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 7),
                  child: const Text(
                    "Savings",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 13.5,
                        color: Color.fromARGB(255, 142, 142, 142)),
                  ),
                )
              ],
            ),
            const SizedBox(height: 27),
            Row(
              children: [
                Row(
                  children: [
                    Transform.rotate(
                      angle: -math.pi / 1,
                      child: const Icon(
                        Icons.outbound_outlined,
                        color: Colors.green,
                        size: 27,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      "Receive Money",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 25,
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.outbound_outlined,
                      color: Colors.red,
                      size: 27,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      "Send Money",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter",
                        letterSpacing: 0.4,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
