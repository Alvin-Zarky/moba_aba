import "package:flutter/material.dart";
import 'package:moba_aba/constant/constant.dart';
import 'package:moba_aba/widget/utilities/title_logo.dart';
// import 'package:moba_aba/page/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundApp,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const Expanded(
                child: TitleLogo(
                  title: "ABA",
                  section: "MOBILE",
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Image(
                  height: 30,
                  image: AssetImage("lib/assets/img/aba_banner.png"),
                ),
              ),
            ],
          ),
        ),
      ),
      // FlutterSplashScreen(
      //       duration: const Duration(milliseconds: 2000),
      //       defaultNextScreen: const MyHomePage(),
      //       backgroundColor: Colors.white,
      //       splashScreenBody: Center(
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             const SizedBox(
      //               height: 100,
      //             ),
      //             const Text(
      //               "Custom Splash",
      //               style: TextStyle(color: Colors.black, fontSize: 24),
      //             ),
      //             const Spacer(),
      //             SizedBox(
      //               width: 200,
      //               child: Image.asset('assets/flutter.png'),
      //             ),
      //             const Spacer(),
      //             const Text(
      //               "Flutter is Love",
      //               style: TextStyle(color: Colors.pink, fontSize: 20),
      //             ),
      //             const SizedBox(
      //               height: 100,
      //             ),
      //           ],
      //         ),
      //       ),
      //     );
    );
  }
}
