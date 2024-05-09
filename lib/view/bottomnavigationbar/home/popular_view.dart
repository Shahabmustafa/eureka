

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/color.dart';
import 'other_user_account.dart';
import 'home_view.dart';

class PopularScreen extends StatefulWidget {
  const PopularScreen({super.key});

  @override
  State<PopularScreen> createState() => _PopularScreenState();
}

class _PopularScreenState extends State<PopularScreen> {
  List<String> image = [
    "https://i.pinimg.com/474x/c8/ec/eb/c8eceb497aecad46a20021180cfd0503.jpg",
    "https://i.pinimg.com/474x/33/b5/96/33b596908f23b4b2c3f3e64f032e51b6.jpg",
    "https://i.pinimg.com/474x/0f/f9/e1/0ff9e1ad22b598184af7ed0954757f26.jpg",
    "https://i.pinimg.com/474x/1f/a2/48/1fa248197d71d761b63effa5c95f027c.jpg",
    "https://i.pinimg.com/474x/d6/d9/03/d6d90379a1c35b44e215774de27e6cd8.jpg",
  ];

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: image.length,
        itemBuilder: (context,index){
          return Stack(
            children: [
              CachedNetworkImage(
                imageUrl: userData[index],
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
                placeholder: (context, url) => Container(color: Colors.black,),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              // _controller.value.isInitialized ? AspectRatio(
              //   aspectRatio: 9/18,
              //   child: VideoPlayer(
              //     _controller,
              //   ),
              // ) : Container(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.36,
                    width: MediaQuery.sizeOf(context).width,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          clipBehavior: Clip.none,
                          children: [
                            InkWell(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => OtherUserAccount()));
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  imageUrl: userData[index],
                                  fit: BoxFit.fill,
                                  height: 60,
                                  width: 60,
                                  placeholder: (context, url) => Container(color: Colors.black,),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                ),
                              ),
                            ),
                            const Positioned(
                              top: 45,
                              child: CircleAvatar(
                                radius: 12,
                                backgroundColor: EColor.primaryColor,
                                child: Icon(Icons.add,color: EColor.white,size: 20,),
                              ),
                            ),
                          ],
                        ),
                        IconsText(
                          title: "1122",
                          icons: Icons.favorite,
                          iconColor: EColor.primaryColor,
                          onTap: (){

                          },
                        ),
                        IconsText(
                          title: "200",
                          icons: Iconsax.message,
                          iconColor: Colors.white,
                          onTap: (){
                            showModalBottomSheet(
                              context: context,
                              builder: (context){
                                return Column(
                                  children: [
                                    Expanded(
                                      child: ListView.builder(
                                        itemCount: 12,
                                        itemBuilder: (context,index){
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ListTile(
                                                leading: ClipRRect(
                                                  borderRadius: BorderRadius.circular(100),
                                                  child: CachedNetworkImage(
                                                    height: 50,
                                                    width: 50,
                                                    imageUrl: userData[index],
                                                    fit: BoxFit.fill,
                                                    placeholder: (context, url) => Center(child: CircularProgressIndicator(color: Colors.black,)),
                                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                                  ),
                                                ),
                                                title: Text("Shahab Mustafa"),
                                                subtitle: Text("Very Nice"),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ),
                                    Container(
                                      height: 65,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                        child: Center(
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: "Enter Comment",
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),
                        IconsText(
                          title: "200",
                          icons: Iconsax.send_2,
                          iconColor: Colors.white,
                          onTap: (){

                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    height: MediaQuery.sizeOf(context).height * 0.12,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              child: ListTile(
                                leading: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: CachedNetworkImage(
                                    height: 50,
                                    width: 50,
                                    imageUrl: userData[index],
                                    fit: BoxFit.fill,
                                    placeholder: (context, url) => Container(color: Colors.black,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                  ),
                                ),
                                title: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => OtherUserAccount()));
                                  },
                                  child: Text(
                                    "Shahab Mustafa",
                                    style: GoogleFonts.cabin(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  "#foryou #followme #fym #like #share #followme #fym #like #share",
                                  style: GoogleFonts.cabin(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: CircleAvatar(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: TabBar(
                  indicatorColor: EColor.primaryColor,
                  unselectedLabelColor: EColor.white,
                  dividerHeight: 0.0,
                  labelStyle: TextStyle(
                      color: EColor.white,
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
            ],
          );
        },
      ),
    );
  }
}
