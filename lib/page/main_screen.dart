import 'package:flutter/material.dart';
import 'package:moba_aba/constant/constant.dart';
import 'package:moba_aba/page/profile_screen.dart';

import 'package:moba_aba/widget/home/box_cash.dart';
import 'package:moba_aba/widget/home/box_category_bank.dart';
import 'package:moba_aba/widget/home/box_discovery.dart';
import 'package:moba_aba/widget/home/box_explore_service.dart';
import 'package:moba_aba/widget/home/box_favorite.dart';
import 'package:moba_aba/widget/home/box_slide.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kBackgroundApp,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(
                          Icons.notifications_outlined,
                          color: Colors.white,
                          size: 27,
                        ),
                      ),
                      const SizedBox(width: 22),
                      GestureDetector(
                        onTap: () {},
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: const Image(
                              height: 30,
                              image: AssetImage("lib/assets/icon/qrcode.jpeg")),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      // const CircleAvatar(
                      //   radius: 27,
                      //   child: Image(
                      //     image: AssetImage("lib/assets/img/profile.jpg"),
                      //   ),
                      // ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => const ProfileScreen())));
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: const Image(
                            height: 57,
                            image: AssetImage("lib/assets/img/profile.jpg"),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Hello, Somon!",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Lato",
                                fontSize: 21,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "View Profile >",
                              style: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 185, 185, 185)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const BoxCash(),
                Container(
                  margin: const EdgeInsets.only(top: 20),
                  padding: const EdgeInsets.all(11),
                  decoration: kContainerStyle,
                  child: Column(
                    children: [
                      SizedBox(
                        // height: height / 3.8,
                        height: height / 3.07,
                        child: GridView(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          children: const [
                            BoxCategoryBank(
                                icon: Icons.account_balance_wallet,
                                title: "Accounts"),
                            BoxCategoryBank(
                                icon: Icons.credit_card, title: "Cards"),
                            BoxCategoryBank(
                                icon: Icons.monetization_on, title: "Payments"),
                            BoxCategoryBank(
                                icon: Icons.qr_code_scanner, title: "ABA Scan"),
                            BoxCategoryBank(
                                icon: Icons.stars, title: "Favorites"),
                            BoxCategoryBank(
                                icon: Icons.swap_horizontal_circle,
                                title: "Transfers"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: const Divider(
                          thickness: 0.6,
                          color: Color.fromARGB(255, 172, 172, 172),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: height / 19.7,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            BoxSlide(icon: Icons.payments, title: "E-cash"),
                            SizedBox(width: 10),
                            BoxSlide(icon: Icons.payments, title: "Services"),
                            SizedBox(width: 10),
                            BoxSlide(
                                icon: Icons.payments, title: "New Account"),
                            SizedBox(width: 10),
                            BoxSlide(icon: Icons.payments, title: "Schedules"),
                            SizedBox(width: 10),
                            BoxSlide(
                                icon: Icons.payments, title: "Invite Friend"),
                            SizedBox(width: 10),
                            BoxSlide(icon: Icons.payments, title: "ABA Places"),
                            SizedBox(width: 10),
                            BoxSlide(icon: Icons.payments, title: "Loans"),
                            SizedBox(width: 10),
                            BoxSlide(
                                icon: Icons.payments, title: "Exchange Rate"),
                            SizedBox(width: 10),
                            BoxSlide(icon: Icons.payments, title: "Locator"),
                            SizedBox(width: 10),
                            BoxSlide(icon: Icons.payments, title: "Checkbook"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Explore Services",
                              style: kTextTitleStyle,
                            ),
                            Text(
                              "View All >",
                              style: TextStyle(
                                fontFamily: "Inter",
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // margin: const EdgeInsets.only(top: 5),
                        decoration: kContainerStyle,
                        padding: const EdgeInsets.all(13),
                        child: SizedBox(
                          // height: height / 10,
                          height: height / 8.4,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              BoxExploreService(
                                image: "lib/assets/icon/cinema.png",
                                title: "Cinema",
                                subtitle: "Ticket",
                              ),
                              SizedBox(width: 25),
                              BoxExploreService(
                                  image: "lib/assets/icon/cinema.png",
                                  title: "BookMeBus"),
                              SizedBox(width: 25),
                              BoxExploreService(
                                  image: "lib/assets/icon/cinema.png",
                                  title: "VET Express"),
                              SizedBox(width: 25),
                              BoxExploreService(
                                image: "lib/assets/icon/cinema.png",
                                title: "Garden City",
                                subtitle: "Water Park",
                              ),
                              SizedBox(width: 25),
                              BoxExploreService(
                                  image: "lib/assets/icon/cinema.png",
                                  title: "BookMeBus"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "News & Promotions",
                        style: kTextTitleStyle,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        // height: height / 6.5,
                        height: height / 4.8,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(11),
                                child: const Image(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("lib/assets/img/banner.jpeg"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            SizedBox(
                              width: width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(11),
                                child: const Image(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("lib/assets/img/banner.jpeg"),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            SizedBox(
                              width: width,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(11),
                                child: const Image(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("lib/assets/img/banner.jpeg"),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Discoveries",
                        style: kTextTitleStyle,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        // height: height / 6.1,
                        height: height / 4.65,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            // Container(
                            //   width: width / 3.5,
                            //   child: ClipRRect(
                            //     borderRadius: BorderRadius.circular(11),
                            //     child: const Image(
                            //       fit: BoxFit.cover,
                            //       image: AssetImage("lib/assets/img/ads.jpeg"),
                            //     ),
                            //   ),
                            // ),
                            BoxDiscovery(title: "Settings Made Easy"),
                            SizedBox(width: 15),
                            BoxDiscovery(title: "Explore Services"),
                            SizedBox(width: 15),
                            BoxDiscovery(title: "Adjustable font size"),
                            SizedBox(width: 15),
                            BoxDiscovery(title: "Custom your app"),
                            SizedBox(width: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Favorites",
                        style: kTextTitleStyle,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        // height: height / 5.5,
                        // height: height / 6.15,
                        height: height / 4.75,
                        decoration: kContainerStyle,
                        padding: const EdgeInsets.all(13),
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: const [
                            BoxFavorite(shortcut: "OS", name: "Ou Siya"),
                            SizedBox(width: 15),
                            BoxFavorite(shortcut: "OS", name: "Ou Siya"),
                            SizedBox(width: 15),
                            BoxFavorite(shortcut: "OS", name: "Ou Siya"),
                            SizedBox(width: 15),
                            BoxFavorite(shortcut: "OS", name: "Ou Siya"),
                            SizedBox(width: 15),
                            BoxFavorite(shortcut: "OS", name: "Ou Siya"),
                          ],
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 25, bottom: 25),
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 10, bottom: 10),
                          decoration: kContainerStyle.copyWith(
                              color: const Color.fromARGB(255, 203, 203, 203)),
                          child: Text(
                            "Edit Home",
                            style: kTextStyle.copyWith(
                                color: Colors.black, fontSize: 13.7),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
