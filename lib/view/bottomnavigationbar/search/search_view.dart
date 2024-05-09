import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/view/bottomnavigationbar/home/other_user_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/color.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {

  final List<String> userData = [
    "https://i.pinimg.com/474x/36/a2/e2/36a2e242bfe3ac039e0618fbaaef7596.jpg",
    "https://i.pinimg.com/474x/01/ca/43/01ca433aad9106d8b6143f8fd3af8538.jpg",
    "https://i.pinimg.com/474x/b5/1b/0b/b51b0b2b24feefe3a8cabb4daa22fb3c.jpg",
    "https://i.pinimg.com/474x/b6/7e/d6/b67ed610068807dc4595394018fdb3bd.jpg",
    "https://i.pinimg.com/474x/ef/9b/09/ef9b09e6375dfc926d35f62d24200cad.jpg",
    "https://i.pinimg.com/474x/e8/7a/6d/e87a6d0d42a0baae55a767fb7cde0779.jpg",
  ];

  bool search = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: search == false ?
        Text("Search") :
        Container(
          height: 40,
          width: 350,
          padding: EdgeInsets.only(left: 15,top: 18),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 2,
              ),
            ]
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search User",
                hintStyle: GoogleFonts.cabin(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
        actions: [
          GestureDetector(
            onTap: (){
              if(search == false){
                setState(() {});
                search = true;
              }else if(search == true){
                setState(() {});
                search = false;
              }
            },
            child: search == false ?
            Icon(Iconsax.search_normal,) :
            Icon(Iconsax.close_circle),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 6,
              itemBuilder: (context,index){
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedNetworkImage(
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                      imageUrl: userData[index],
                      placeholder: (context, url) => Container(color: Colors.black,),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  title: Text(
                    "Shahab Mustafa",
                    style: GoogleFonts.cabin(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    "120 Videos",
                    style: GoogleFonts.cabin(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                  trailing: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: EColor.primaryColor,
                      foregroundColor: Colors.white,
                      minimumSize: Size(90, 35),
                      side: BorderSide(
                        color: Colors.transparent,
                      ),
                    ),
                    onPressed: (){

                    },
                    child: Text("Follow"),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const OtherUserAccount()));
                  },
                );
              },
            ),
          ),
        ],
      )
    );
  }
}
