import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';
import 'package:moba_aba/widget/profile/list_tile_profile.dart';
import 'package:moba_aba/widget/utilities/title_logo.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: const Color.fromARGB(255, 163, 163, 163),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: const Icon(
                              Icons.close,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 5),
                          const TitleLogo(title: "ABA", section: "Settings"),
                        ],
                      ),
                      SizedBox(
                        child: Center(
                          child: Column(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 25, bottom: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: const Image(
                                    height: 130,
                                    image: AssetImage(
                                        "lib/assets/img/profile.jpg"),
                                  ),
                                ),
                              ),
                              Text(
                                "ទុរគតជន ស៊ុម សំអន",
                                style: kTextTitleStyle.copyWith(fontSize: 20),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "App ID: 817690",
                                style: kTextStyle.copyWith(
                                    color: Colors.white, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 0),
              child: Column(
                children: const [
                  ListTileProfile(
                    icon: Icons.account_circle_outlined,
                    title: "My Profile",
                  ),
                  ListTileProfile(
                    icon: Icons.lock_outline,
                    title: "Security",
                  ),
                  ListTileProfile(
                    icon: Icons.language,
                    title: "Language",
                  ),
                  ListTileProfile(
                    icon: Icons.call,
                    title: "Contact Us",
                  ),
                  ListTileProfile(
                    icon: Icons.indeterminate_check_box_outlined,
                    title: "Term & Conditions",
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Center(
                child: Text(
                  "App Version: V 5.0.4",
                  style: kTextStyle.copyWith(
                      fontWeight: FontWeight.normal, fontSize: 14),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Center(
                child: Image(
                  height: 40,
                  image: AssetImage("lib/assets/img/banner_aba.png"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
