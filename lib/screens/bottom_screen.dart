import 'package:flutter/material.dart';
import 'package:prime/screens/download_screen.dart';
import 'package:prime/screens/find_screen.dart';
import 'package:prime/screens/home_screen.dart';
import 'package:prime/screens/live_tv_screen.dart';
import 'package:prime/screens/store_screen.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  List<Widget> _pages = [
    HomeScreen(),
    StoreScreen(),
    LiveTvScreen(),
    DownloadScreen(),
    FindScreen(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          unselectedFontSize: 0,
          selectedFontSize: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          onTap: onTap,
          currentIndex: currentIndex,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.withOpacity(0.5),
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront_outlined, size: 30),
              label: 'Store',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv_outlined, size: 30),
              label: 'Live TV',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined, size: 30),
              label: 'Download',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: 'Find',
            ),
          ],
        ),
      ),
    );
  }
}
