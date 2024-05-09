import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/utils/color.dart';
import 'package:eureka/view/bottomnavigationbar/home/other_user_account.dart';
import 'package:eureka/view/bottomnavigationbar/search/search_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class DiscoverView extends StatefulWidget {
  const DiscoverView({super.key});

  @override
  State<DiscoverView> createState() => _DiscoverViewState();
}

class _DiscoverViewState extends State<DiscoverView> {

  List<bool> userStatus = [
    true,
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final heigth = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: CachedNetworkImage(
                    height: 40,
                    width: 40,
                    imageUrl: "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
                    fit: BoxFit.fill,
                    placeholder: (context, url) => Container(color: Colors.black,),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Flexible(
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SearchView()));
                    },
                    child: Container(
                      height: 40,
                      width: 330,
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: EColor.white,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 2,
                            color: Colors.grey,
                            offset: Offset(0.5,1)
                          ),
                        ]
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Search",
                            style: GoogleFonts.cabin(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      )
                    ),
                  ),
                ),
                
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 115,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: userStatus[index] == true ? EColor.primaryColor : Colors.grey,width: 4),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: CachedNetworkImage(
                              imageUrl: "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Container(color: Colors.black,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 80,
                        child: RichText(
                          overflow: TextOverflow.ellipsis,
                          strutStyle: StrutStyle(fontSize: 12.0),
                          text: TextSpan(
                              style: TextStyle(color: Colors.black),
                              text: 'Shahab Mustafa'),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return Container(
                  height: heigth * 0.72,
                  width: width,
                  decoration: BoxDecoration(
                    color: EColor.white,
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => OtherUserAccount()));
                        },
                        child: Container(
                          color: EColor.white,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(100),
                                    child: CachedNetworkImage(
                                      height: 45,
                                      width: 45,
                                      fit: BoxFit.fill,
                                      imageUrl: "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
                                      placeholder: (context, url) =>  Center(child: CircularProgressIndicator()),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                    ),
                                  ),
                                  SizedBox(
                                    width: width * 0.02,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Shahab Mustafa",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Text(
                                        "12 h",
                                        style: TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Icon(Icons.more_vert)
                            ],
                          ),
                        ),
                      ),
                      CachedNetworkImage(
                        height: heigth * 0.51,
                        width: double.infinity,
                        fit: BoxFit.fill,
                        imageUrl: "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
                        placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                      ),
                      Container(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: (){

                                  },
                                  child: Icon(
                                    Iconsax.like_1,
                                    size: 30,
                                    color:
                                    Colors.blue,
                                  ),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                GestureDetector(
                                  onTap: (){
                                  },
                                  child: Icon(Iconsax.message),
                                ),
                                SizedBox(
                                  width: width * 0.05,
                                ),
                                Icon(Iconsax.share)
                              ],
                            ),
                            Icon(CupertinoIcons.bookmark,size: 30,),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              "1200",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              "dddddd",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(
            context: context,
            builder: (context){
              return AlertDialog(
                title: Text("Select Type"),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Iconsax.gallery),
                      title: Text("Share Post"),
                      onTap: (){},
                    ),
                    ListTile(
                      leading: Icon(Iconsax.status),
                      title: Text("Share Status"),
                      onTap: (){},
                    ),
                  ],
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
