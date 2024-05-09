import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/view/bottomnavigationbar/profile/profile_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/color.dart';

class OtherUserAccount extends StatefulWidget {
  const OtherUserAccount({super.key});

  @override
  State<OtherUserAccount> createState() => _OtherUserAccountState();
}

class _OtherUserAccountState extends State<OtherUserAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shahab Mustafa"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                    width: 200,
                    decoration: BoxDecoration(
                        color: EColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "Follow",
                        style: GoogleFonts.cabin(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: EColor.white
                        ),
                      ),
                    )
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: EColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.play_arrow,color: Colors.white,),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: EColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Icon(Icons.favorite,color: Colors.white,size: 15,),
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
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 14/18,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              padding: EdgeInsets.all(5),
              itemBuilder: (context,index){
                return Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
                      fit: BoxFit.fill,
                      width: 200,
                      placeholder: (context, url) => SizedBox(),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.play_arrow,color: EColor.white),
                                SizedBox(width: 2,),
                                Text(
                                  "2.1M",
                                  style: TextStyle().copyWith(color: EColor.white,),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.favorite,size: 15,color: EColor.white),
                                SizedBox(width: 2,),
                                Text(
                                  "2.1M",
                                  style: TextStyle().copyWith(color: EColor.white),
                                ),
                                SizedBox(width: 2,),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
