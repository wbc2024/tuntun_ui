import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tuntun_ui/screen/authentication/login_phone_&_faccbook.dart';
class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  void initState() {
     Timer(Duration(seconds: 3),()=>Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginPhoneAndFaceebook())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body:
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xffCCF8F7),
                    Color(0xffFCCCDA)],
                begin: Alignment.center,
                end: Alignment.bottomCenter)),
            child: Column(
              children: [
                SizedBox(height: height*0.40),
                Center(
                  child: Container(
                    width: width,
                      height: height*0.20,
                      child:  Image(image: AssetImage("assets/tuntun.png")))),
                SizedBox(height: height*0.10),
                Text("Tun Tun", style: TextStyle(fontSize: height*0.06))
              ],
            )
          ),
        ));
  }
}
