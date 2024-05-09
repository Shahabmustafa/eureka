import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/view/bottomnavigationbar/messages/messages_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListMessageView extends StatefulWidget {
  const ListMessageView({super.key});

  @override
  State<ListMessageView> createState() => _ListMessageViewState();
}

class _ListMessageViewState extends State<ListMessageView> {
  final List<String> userData = [
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
      appBar: AppBar(
        title: Text("Inbox"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context,index){
          return ListTile(
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
            title: Text(
              "Shahab Mustafa",
              style: GoogleFonts.cabin(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            subtitle: Text(
              "Last Message",
              style: GoogleFonts.cabin(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MessageView()));
            },
          );
        },
      ),
    );
  }
}
