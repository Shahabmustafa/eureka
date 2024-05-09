import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class RecommendationScreen extends StatefulWidget {
  const RecommendationScreen({super.key});

  @override
  State<RecommendationScreen> createState() => _RecommendationScreenState();
}

class _RecommendationScreenState extends State<RecommendationScreen> {

  final List<String> userData = [
    "https://i.pinimg.com/474x/36/a2/e2/36a2e242bfe3ac039e0618fbaaef7596.jpg",
    "https://i.pinimg.com/474x/01/ca/43/01ca433aad9106d8b6143f8fd3af8538.jpg",
    "https://i.pinimg.com/474x/b5/1b/0b/b51b0b2b24feefe3a8cabb4daa22fb3c.jpg",
    "https://i.pinimg.com/474x/b6/7e/d6/b67ed610068807dc4595394018fdb3bd.jpg",
    "https://i.pinimg.com/474x/ef/9b/09/ef9b09e6375dfc926d35f62d24200cad.jpg",
    "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
    "https://i.pinimg.com/474x/36/a2/e2/36a2e242bfe3ac039e0618fbaaef7596.jpg",
    "https://i.pinimg.com/474x/01/ca/43/01ca433aad9106d8b6143f8fd3af8538.jpg",
    "https://i.pinimg.com/474x/b5/1b/0b/b51b0b2b24feefe3a8cabb4daa22fb3c.jpg",
    "https://i.pinimg.com/474x/b6/7e/d6/b67ed610068807dc4595394018fdb3bd.jpg",
    "https://i.pinimg.com/474x/ef/9b/09/ef9b09e6375dfc926d35f62d24200cad.jpg",
    "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
  ];

  final List<String> typeData = [
    "https://cdn-icons-png.flaticon.com/128/785/785116.png",
    "https://cdn-icons-png.flaticon.com/128/8037/8037145.png",
    "https://cdn-icons-png.flaticon.com/128/983/983534.png",
  ];

  final List<String> typeName = [
    "All Event",
    "Game",
    "Cycle"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 50),
            child: TabBar(
              indicatorColor: EColor.primaryColor,
              unselectedLabelColor: EColor.black,
              dividerHeight: 0.0,
              labelStyle: TextStyle(
                  color: EColor.primaryColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16
              ),
              tabs: [
                Tab(
                  text: "Popular",
                ),
                Tab(
                  text: "Recommended",
                ),
                Tab(
                  text: "Live",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            title: Text(
              "Great your idol 👋",
              style: GoogleFonts.cabin(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            subtitle: Text(
            "Content Creator Live Stream",
            style: GoogleFonts.cabin(
              fontWeight: FontWeight.normal,
              fontSize: 18,
              color: Colors.grey,
            ),
          ),
            trailing: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2,1),
                  ),
                ]
              ),
              child: Icon(Iconsax.notification),
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: userData.length,
              itemBuilder: (context,index){
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Container(
                              height: 70,
                              width: 70,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                  color: EColor.primaryColor,
                                  width: 3,
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  imageUrl: userData[index],
                                  fit: BoxFit.fill,
                                  placeholder: (context, url) => Container(color: Colors.black,),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              width: 50,
                              decoration: BoxDecoration(
                                color: EColor.primaryColor,
                                borderRadius: BorderRadius.circular(30)
                              ),
                              child: Center(
                                child: Text(
                                  "Live",
                                  style: GoogleFonts.cabin(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "John",
                          style: GoogleFonts.cabin(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                  boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2,4)
                  ),
                ]
              ),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search Live Streaming",
                    prefixIcon: Icon(CupertinoIcons.search),
                    border: InputBorder.none,
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: 60,
                            decoration: BoxDecoration(
                              color: EColor.primaryColor,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Icon(Icons.tune,color: EColor.white,size: 25,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: typeData.length,
              itemBuilder: (context,index){
                return Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 5,
                            offset: Offset(2,3),
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: CachedNetworkImage(
                              height: 30,
                              width: 30,
                              imageUrl: typeData[index],
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Container(color: Colors.black,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                            ),
                          ),
                          Text(
                            typeName[index],
                            style: GoogleFonts.cabin(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black
                    ),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: CachedNetworkImage(
                                imageUrl: "https://i.pinimg.com/474x/d4/d4/9f/d4d49fc6297dcebedac7b7f54a78c459.jpg",
                                fit: BoxFit.fill,
                                width: double.infinity,
                                placeholder: (context, url) => Container(color: Colors.black,),
                                errorWidget: (context, url, error) => Icon(Icons.error),
                              ),
                            ),
                            Container(
                              height: 100,
                              decoration: const BoxDecoration(
                                color: EColor.white,
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    blurRadius: 5,
                                  ),
                                ]
                              ),
                              child: Center(
                                child: ListTile(
                                  leading: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          border: Border.all(
                                            color: EColor.primaryColor,
                                            width: 3,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(100),
                                          child: CachedNetworkImage(
                                            imageUrl: userData[index],
                                            fit: BoxFit.fill,
                                            placeholder: (context, url) => Container(color: Colors.black,),
                                            errorWidget: (context, url, error) => Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 15,
                                        width: 40,
                                        decoration: BoxDecoration(
                                            color: EColor.primaryColor,
                                            borderRadius: BorderRadius.circular(30)
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Live",
                                            style: GoogleFonts.cabin(
                                              fontSize: 12,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  title: Text("Lorem ipsum dolor sit amet consectetu."),
                                  subtitle: Text("Turky Rosok _ n Pantai Pasir rembang"),
                                  trailing: Icon(Icons.more_vert),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10,top:10),
                          child: Container(
                           height: 40,
                           width: 40,
                           decoration: BoxDecoration(
                             color: Colors.amber,
                             borderRadius: BorderRadius.circular(100),
                           ),
                            child: Icon(Icons.favorite,color: EColor.primaryColor,),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
