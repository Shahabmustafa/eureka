import 'package:eureka/utils/color.dart';
import 'package:eureka/view/bottomnavigationbar/discover/discover_view.dart';
import 'package:eureka/view/bottomnavigationbar/home/home_view.dart';
import 'package:eureka/view/bottomnavigationbar/messages/list_message_view.dart';
import 'package:eureka/view/bottomnavigationbar/post/post_view.dart';
import 'package:eureka/view/bottomnavigationbar/profile/profile_view.dart';
import 'package:eureka/view/bottomnavigationbar/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  int currentIndex = 0;

  List Check = [
    const DiscoverView(),
    const HomeView(),
    const PostView(),
    const ListMessageView(),
    const ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Check[currentIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          selectedItemColor: Colors.black,
          showUnselectedLabels: false,
          showSelectedLabels: false,
          enableFeedback: true,
          currentIndex: currentIndex,
          iconSize: 25,
          selectedIconTheme: IconThemeData(
            color: EColor.primaryColor,
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          onTap: (value){
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Iconsax.discover),
                label: "Discover"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.play_circle_outline),
                label: "Home"
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.add_box_outlined),
                label: "Post"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: "Message",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),
          ],
        )
    );
  }
}