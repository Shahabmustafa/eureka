import 'package:eureka/utils/color.dart';
import 'package:eureka/view/auth/forget_password_view.dart';
import 'package:eureka/view/auth/signup_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_social_media_button/flutter_social_media_button.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common/custom_bottom_navigation_bar.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: kToolbarHeight,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Eureka",
                    style: GoogleFonts.cabin(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: EColor.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpView()));
                    },
                    child: Row(
                      children: [
                        Text(
                          "SignUp",
                          style: GoogleFonts.cabin(
                            fontSize: 18,
                            color: EColor.primaryColor,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Icon(Icons.arrow_forward_ios,color: EColor.primaryColor,)
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kToolbarHeight,
              ),
              Container(
                width: 300,
                child: Text(
                  "Explore the world by watching and creating live videos.",
                  style: GoogleFonts.cabin(
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: EColor.black,
                  ),
                ),
              ),
              const SizedBox(
                height: kToolbarHeight,
              ),
              Column(
                children: [
                  TextFormField(
                    cursorColor: EColor.primaryColor,
                    style: GoogleFonts.cabin(
                      fontSize: 16,
                      color: EColor.primaryColor,
                    ),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: GoogleFonts.cabin(
                        fontSize: 16,
                        color: EColor.black,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    cursorColor: EColor.primaryColor,
                    style: GoogleFonts.cabin(
                      fontSize: 16,
                      color: EColor.primaryColor,
                    ),
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: Icon(Icons.visibility),
                      hintStyle: GoogleFonts.cabin(
                        fontSize: 16,
                        color: EColor.black,
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgetPasswordView()));
                        },
                        child: Text(
                          "Forget Password",
                          style: GoogleFonts.cabin(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: EColor.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomNavigationBarScreen()));
                    },
                    child: Center(
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: EColor.primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: GoogleFonts.cabin(
                              fontSize: 16,
                              color: EColor.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: kToolbarHeight,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(child: Divider(color: EColor.primaryColor,)),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "or",
                        style: GoogleFonts.cabin(
                          fontSize: 20,
                          color: EColor.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Flexible(child: Divider(color: EColor.primaryColor,)),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlutterSocialMediaButton(
                        title: "",
                        height: 50,
                        width: 50,
                        imageUrl: "assets/images/google.png",
                        onlyImageAvailable: true,
                        onPress: (){

                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      FlutterSocialMediaButton(
                        title: "",
                        height: 50,
                        width: 50,
                        imageUrl: "assets/images/apple-logo.png",
                        onlyImageAvailable: true,
                        onPress: (){

                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      FlutterSocialMediaButton(
                        title: "",
                        height: 50,
                        width: 50,
                        imageUrl: "assets/images/facebook.png",
                        onlyImageAvailable: true,
                        onPress: (){

                        },
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
