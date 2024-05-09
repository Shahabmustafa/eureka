import 'package:cached_network_image/cached_network_image.dart';
import 'package:eureka/utils/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  MessageBubble({Key? key, this.message,required this.isImage,required this.isMe}) : super(key: key);
  String? message;
  bool isMe;
  bool isImage;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.topRight : Alignment.topLeft,
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 10,
        ),
        padding: isImage ? EdgeInsets.all(5) : EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isMe ? EColor.primaryColor : EColor.primaryColor,
        ),
        child: Column(
          mainAxisSize: isMe ? MainAxisSize.min : MainAxisSize.max,
          crossAxisAlignment: isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          children: [
            isImage ?
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: CachedNetworkImage(
                fit: BoxFit.cover,
                width: 200,
                height: 250,
                imageUrl: message!.toString(),
                placeholder: (context, url) => Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => Image.asset("assets/images/dish.png"),
              ),
            ) :
            Text(
              message.toString(),
              style: TextStyle(
                color: EColor.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
