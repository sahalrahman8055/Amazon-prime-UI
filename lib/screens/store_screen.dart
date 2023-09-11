import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prime/screens/settings_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

int defultIndex = 0;
final strmain_imgs = [
  "assets/str_main_img/str_img1.jpg",
  "assets/str_main_img/str_img2.jpg",
  "assets/str_main_img/str_img3.jpg",
  "assets/str_main_img/str_img4.jpg",
  "assets/str_main_img/str_img5.jpg",
];
final List<String> first_imgs = [
  "assets/sec_slide/img1.1.jpg",
  "assets/sec_slide/img1.2.jpg",
  "assets/sec_slide/img1.3.jpg",
  "assets/sec_slide/img1.4.jpg",
  "assets/sec_slide/img1.5.jpg",
];
final List<String> second_imgs = [
  "assets/str_2.slide/str.1.1.jpg",
  "assets/str_2.slide/str.1.2.jpg",
  "assets/str_2.slide/str.1.3.jpg",
  "assets/str_2.slide/str.1.4.jpg",
  "assets/str_2.slide/str.1.5.jpg",
];
final List<String> third_imgs = [
  "assets/str_3.slide/str.2.1.jpg",
  "assets/str_3.slide/str.2.2.jpg",
  "assets/str_3.slide/str.2.3.jpg",
  "assets/str_3.slide/str.2.4.jpg",
  "assets/str_3.slide/str.2.5.jpg",
];
final List<String> fourth_imgs = [
  "assets/str_4.slide/str.3.1.jpg",
  "assets/str_4.slide/str.3.2.jpg",
  "assets/str_4.slide/str.3.3.jpg",
  "assets/str_4.slide/str.3.4.jpg",
  "assets/str_4.slide/str.3.5.jpg",
];

class _StoreScreenState extends State<StoreScreen> {
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
                    const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Store',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.amber,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 217),
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
                        'Rent',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Channels',
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
                              setState(() => defultIndex = index),
                        ),
                        itemCount: strmain_imgs.length,
                        itemBuilder: (context, index, realIndex) {
                          final strmain_img = strmain_imgs[index];

                          return buildimage_1(strmain_img, index);
                        },
                      ),
                      SizedBox(
                        height: 32,
                        child: buildIndicator_1(),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          ' Free on Prime Video Channels >',
                          style: TextStyle(
                            color: Colors.amber,
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
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          ' Rent New Movies >',
                          style: TextStyle(
                            color: Colors.amber,
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
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Row(
                      children: [
                        Text(
                          ' Rent in your lanlanguage',
                          style: TextStyle(
                            color: Colors.amber,
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

  Widget buildimage_1(String strmain_img, int index) => Container(
        // margin: EdgeInsets.symmetric(horizontal: 2),
        color: Colors.grey,
        child: Image.asset(
          strmain_img,
          fit: BoxFit.cover,
        ),
      );
  Widget buildIndicator_1() => Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: AnimatedSmoothIndicator(
          activeIndex: defultIndex,
          count: strmain_imgs.length,
          effect: const WormEffect(
            // dotColor: Colors.white,
            dotHeight: 7,
            dotWidth: 7,
            activeDotColor: Colors.white,
          ),
        ),
      );
}
