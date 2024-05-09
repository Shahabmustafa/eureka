import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ListTile(
          //   leading: Icon(Iconsax.),
          //   title: Text(""),
          // ),
        ],
      ),
    );
  }
}
