import 'package:flutter/material.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/add_post.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/favorite.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/chat.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/profile.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/video_details.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/videos_and_search.dart';
import 'package:tuntun_ui/screen/home_page/my_home_page.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

final _pages = [
  HomePage(),
  VideosAndSearch(),
  AddPost(),
  Chat(),
  Profile()
];
var _currentIndex= 0;
class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    double screenheight= MediaQuery.of(context).size.height;
    double screenwidth= MediaQuery.of(context).size.width;
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        iconSize: 25,

        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.black ),

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.live_tv, size: 30), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.favorite, color: Colors.red, size: 30), label: "",),
          BottomNavigationBarItem(icon: Icon(Icons.message, size: 30), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_rounded, size: 30), label: ""),
        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: _pages[_currentIndex],
    );
  }
}
