import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/view/bottomnavigationbar/profile/setting/setting_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/color.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Shahab Mustafa"),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const SettingView()));
              },
              child: Icon(Iconsax.setting),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: CachedNetworkImage(
                          imageUrl: "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
                          fit: BoxFit.fill,
                          height: 100,
                          width: 100,
                          placeholder: (context, url) => CircularProgressIndicator(color: Colors.black,),
                          errorWidget: (context, url, error) => Icon(Icons.error),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Shahab Mustafa",
                        style: GoogleFonts.cabin(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FollowerButton(
                      numbers: "30",
                      following: "Following",
                    ),
                    FollowerButton(
                      numbers: "200",
                      following: "Followers",
                    ),
                    FollowerButton(
                      numbers: "400",
                      following: "Likes",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 40,
                      width: 270,
                      decoration: BoxDecoration(
                          color: EColor.primaryColor,
                          borderRadius: BorderRadius.circular(100)
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Iconsax.edit,color: Colors.white,),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Edit",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: EColor.primaryColor,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: Icon(Icons.person,color: Colors.white,),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 80,
                  width: 350,
                  child: Center(
                    child: Text(
                      "hello i am flutter developer create Mobile application andriod and iOS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            TabBar(
              dividerColor: Colors.grey.shade400,
              labelColor: Colors.black,
              indicatorColor: EColor.primaryColor,
              tabs: const [
                Tab(
                  icon: Icon(Iconsax.discover),
                  text: "12",
                ),
                Tab(
                  icon: Icon(Iconsax.play_circle),
                  text: "12K",
                ),
                Tab(
                  icon: Icon(Icons.favorite_border),
                  text: "1M",
                ),
                Tab(
                  icon: Icon(Icons.bookmark_border),
                  text: "200",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FollowerButton extends StatelessWidget {
  FollowerButton({
    required this.numbers,
    required this.following,
    super.key,
  });
  String numbers;
  String following;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numbers,
          style: GoogleFonts.cabin(
            fontWeight: FontWeight.w900,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Text(
          following,
          style: GoogleFonts.cabin(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black.withOpacity(0.4),
          ),
        ),
      ],
    );
  }
}
