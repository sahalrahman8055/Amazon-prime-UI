// ignore_for_file: non_constant_identifier_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prime/screens/settings_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int activeIndex = 0;
  final main_imgs = [
    "assets/homscrollimg/img1.jpg",
    "assets/homscrollimg/im2.jpg",
    "assets/homscrollimg/img3.jpg",
    "assets/homscrollimg/img4.jpg",
    "assets/homscrollimg/img5.jpg",
  ];

  final List<String> second_imgs = [
    "assets/sec_slide/img1.1.jpg",
    "assets/sec_slide/img1.2.jpg",
    "assets/sec_slide/img1.3.jpg",
    "assets/sec_slide/img1.4.jpg",
    "assets/sec_slide/img1.5.jpg",
  ];
  final List<String> third_imgs = [
    "assets/hom_slide3/img2.1.jpg",
    "assets/hom_slide3/img2.2.jpg",
    "assets/hom_slide3/img2.3.jpg",
    "assets/hom_slide3/img2.4.jpg",
    "assets/hom_slide3/img2.5.jpg",
    "assets/hom_slide3/img2.6.jpg",
  ];
  final List<String> fourth_imgs = [
    "assets/hom_slide4/img.3.1.jpg",
    "assets/hom_slide4/img.3.2.jpg",
    "assets/hom_slide4/img.3.3.jpg",
    "assets/hom_slide4/img.3.4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: 400,
                height: 50,
                color: Colors.black,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Image.asset(
                        "assets/Prime_Video_Logo 2.png",
                        height: 140,
                        width: 90,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 170),
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
              const Padding(
                padding: EdgeInsets.only(top: 12),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'All',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Movies',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'TV shows',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 260,
                          autoPlay: true,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) =>
                              setState(() => activeIndex = index),
                        ),
                        itemCount: main_imgs.length,
                        itemBuilder: (context, index, realIndex) {
                          final main_img = main_imgs[index];

                          return buildimage(main_img, index);
                        },
                      ),
                      SizedBox(
                        height: 32,
                        child: buildIndicator(),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Prime',
                          style: TextStyle(
                            color: Colors.blue.shade400,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          ' - Recommended movies',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: screenheight / 6,
                    width: screenwidth,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.6,
                      ),
                      items: second_imgs
                          .map((item) => Container(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 8),
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          item,
                                          fit: BoxFit.cover,
                                          width: 230,
                                          height: 130,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Prime',
                          style: TextStyle(
                            color: Colors.blue.shade400,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          ' - Watch in Your Language',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: screenheight / 6,
                    width: screenwidth,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.6,
                      ),
                      items: third_imgs
                          .map((item) => Container(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 8),
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          item,
                                          fit: BoxFit.cover,
                                          width: 230,
                                          height: 130,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Prime',
                          style: TextStyle(
                            color: Colors.blue.shade400,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                        const Text(
                          ' - Drama movies',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: CarouselSlider(
                      options: CarouselOptions(
                        viewportFraction: 0.6,
                      ),
                      items: fourth_imgs
                          .map((item) => Container(
                                child: Column(
                                  children: [
                                    const SizedBox(height: 8),
                                    Center(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset(
                                          item,
                                          fit: BoxFit.cover,
                                          width: 230,
                                          height: 130,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildimage(String main_img, int index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 2),
        color: Colors.grey,
        child: Image.asset(
          main_img,
          fit: BoxFit.cover,
        ),
      );

  Widget buildIndicator() => Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: main_imgs.length,
          effect: const WormEffect(
            // dotColor: Colors.white,
            dotHeight: 7,
            dotWidth: 7,
            activeDotColor: Colors.white,
          ),
        ),
      );
}
