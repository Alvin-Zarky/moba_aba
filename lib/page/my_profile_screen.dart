import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 235, 235),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  // borderRadius: const BorderRadius.only(
                  //   bottomLeft: Radius.circular(80),
                  //   bottomRight: Radius.circular(80),
                  // ),
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(192, 28, 64, 115),
                    ),
                    // margin: const EdgeInsets.only(top: 20),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, top: 10, right: 20, bottom: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                  ),
                                ),
                                const Text(
                                  "My Profile",
                                  style: TextStyle(
                                    fontFamily: "Lato",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 22,
                                    color: Colors.white,
                                  ),
                                ),
                                const Icon(
                                  Icons.search,
                                  color: Colors.transparent,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 350,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Positioned(
                        top: 140,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: const Image(
                                image: AssetImage("lib/assets/img/man.png"),
                                height: 100,
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            const Text(
                              "ជន ទុរគត",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                                fontFamily: "Lato",
                              ),
                            ),
                            const Text(
                              "xxxx@xxxx.com",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                fontFamily: "Lato",
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 40, right: 40, top: 30, bottom: 30),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Personal Info",
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: "Lato",
                          fontSize: 17.5,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Icon(Icons.edit),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Form(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'First name',
                              contentPadding: EdgeInsets.only(
                                  left: 15, right: 15, top: 17, bottom: 17),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Last name',
                              contentPadding: EdgeInsets.only(
                                  left: 15, right: 15, top: 17, bottom: 17),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Email',
                              contentPadding: EdgeInsets.only(
                                  left: 15, right: 15, top: 17, bottom: 17),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Phone number',
                              contentPadding: EdgeInsets.only(
                                  left: 15, right: 15, top: 17, bottom: 17),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.datetime,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Date of birth',
                                  contentPadding: EdgeInsets.only(
                                      left: 15, right: 15, top: 17, bottom: 17),
                                ),
                              ),
                            ),
                            const SizedBox(width: 15),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Gender',
                                  contentPadding: EdgeInsets.only(
                                      left: 15, right: 15, top: 17, bottom: 17),
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 20),
                          child: TextFormField(
                            keyboardType: TextInputType.streetAddress,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Address',
                              contentPadding: EdgeInsets.only(
                                  left: 15, right: 15, top: 17, bottom: 17),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            margin: const EdgeInsets.only(top: 20, bottom: 20),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 194, 194, 194),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                "Save Change".toUpperCase(),
                                style: TextStyle(
                                  fontFamily: "Lato",
                                  letterSpacing: 1,
                                  color: Colors.white,
                                  fontSize: 16.5,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
