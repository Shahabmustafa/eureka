import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/view/bottomnavigationbar/home/live_screen.dart';
import 'package:eureka/view/bottomnavigationbar/home/recommendation_view.dart';
import 'package:eureka/view/bottomnavigationbar/home/popular_view.dart';
import 'package:eureka/view/bottomnavigationbar/home/other_user_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:video_player/video_player.dart';

import '../../../utils/color.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {


  late VideoPlayerController _controller;

  Future<void> initializeVideoPlayer() async {
    _controller = VideoPlayerController.networkUrl(
      Uri.parse("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4"),
    );

    await _controller.initialize();

    setState(() {
      // Update UI after video is initialized
    });
  }

  void _restartVideo() {
    _controller.seekTo(Duration.zero);
    _controller.play();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializeVideoPlayer();
    _restartVideo();
  }
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: TabBarView(
            children: [
              PopularScreen(),
              RecommendationScreen(),
              LiveScreen(),
            ],
        )
      ),
    );
  }
}

class IconsText extends StatelessWidget {
  IconsText({
    required this.title,
    required this.onTap,
    required this.icons,
    required this.iconColor,
    super.key,
  });
  String title;
  IconData icons;
  Color iconColor;
  void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(
            icons,
            color: iconColor,
            size: 30,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: GoogleFonts.cabin(
              fontWeight: FontWeight.w700,
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
