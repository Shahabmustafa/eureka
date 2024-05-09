import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../utils/color.dart';

class LiveScreen extends StatefulWidget {
  const LiveScreen({super.key});

  @override
  State<LiveScreen> createState() => _LiveScreenState();
}

class _LiveScreenState extends State<LiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 10,
        itemBuilder: (context,index){
          return Stack(
            children: [
              CachedNetworkImage(
                imageUrl: "https://i.pinimg.com/474x/d4/d4/9f/d4d49fc6297dcebedac7b7f54a78c459.jpg",
                fit: BoxFit.fill,
                height: double.infinity,
                width: double.infinity,
                placeholder: (context, url) => Container(color: Colors.black,),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                      Container(
                        height: 70,
                        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Comment",
                              hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: EColor.white),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(color: EColor.white),
                              ),
                              suffixIcon: Icon(Icons.send,color: Colors.white,)
                          ),
                          cursorColor: Colors.white,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      )
    );
  }
}
