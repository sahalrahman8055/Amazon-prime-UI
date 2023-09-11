import 'package:flutter/material.dart';
import 'package:prime/screens/settings_screen.dart';

class LiveTvScreen extends StatefulWidget {
  const LiveTvScreen({super.key});

  @override
  State<LiveTvScreen> createState() => _LiveTvScreenState();
}

class _LiveTvScreenState extends State<LiveTvScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.topLeft,
                colors: [
                  Colors.black,
                  Color.fromARGB(255, 92, 87, 33),
                ],
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 400,
                  height: 50,
                  color: Colors.black,
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Live TV',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 201),
                        child: Icon(
                          Icons.cast,
                          color: Colors.white54,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SettingsScreen()),
                            );
                          },
                          child: const Icon(Icons.settings,
                              color: Colors.white54, size: 30),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 270, top: 20),
                      child: Text(
                        "discovery",
                        style: TextStyle(
                            color: Colors.amber.shade300,
                            fontSize: 18,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.9.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "23 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Girl Meets Farm",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.2,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.2.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "18 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Impact Wrestling",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.5,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.3.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "12 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Mystery Diners",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.8,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.4.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "16 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Hoosptie World",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.7,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.5.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "15 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Ghost Asylum",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.4,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.6.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "23 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Legends of the Wild",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.2,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.7.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "22 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Mysteries of the Missing",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.3,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.8.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "6 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "War Zone",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.9,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23, top: 5),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 65,
                            child: Image.asset("assets/ltv_first/ltv_1.1.jpg"),
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(right: 120),
                                        child: Text(
                                          "49 min left",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white38,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(right: 80),
                                        child: Text(
                                          "Kinder Spritis",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w100),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 32, left: 5),
                                        child: Container(
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            child: const SizedBox(
                                              width: 200,
                                              child: LinearProgressIndicator(
                                                value: 0.1,
                                                valueColor:
                                                    AlwaysStoppedAnimation(
                                                        Colors.red),
                                                backgroundColor: Colors.white12,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            height: 100,
                            width: 280,
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
