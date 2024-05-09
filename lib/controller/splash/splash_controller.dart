import 'dart:async';
import 'package:eureka/view/auth/login_view.dart';
import 'package:flutter/material.dart';


class SplashController{

  isLogin(context){
    Timer(Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
    });
  }
}