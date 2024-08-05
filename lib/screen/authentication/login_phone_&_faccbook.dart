import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuntun_ui/custom_widgets/custom_button.dart';
import 'package:tuntun_ui/helper/allColor.dart';
import 'package:tuntun_ui/screen/authentication/phone_number.dart';
class LoginPhoneAndFaceebook extends StatefulWidget {
  const LoginPhoneAndFaceebook({Key? key}) : super(key: key);

  @override
  _LoginPhoneAndFaceebookState createState() => _LoginPhoneAndFaceebookState();
}
AllColor allColor =AllColor();
class _LoginPhoneAndFaceebookState extends State<LoginPhoneAndFaceebook> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
            backgroundColor: allColor.backgrounColor,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: height*0.50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/couple.jpg"),
                              fit: BoxFit.cover))),
                  SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.all(width*0.05),
                      child: Column(
                        children: [
                          Row(crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                  width: width*0.20,
                                  height: height*0.05,
                                  child:  Image(image: AssetImage("assets/tuntun.png"))),
                              Text("Tun Tun", style: TextStyle(fontSize: width*0.10, color: Colors.white))]),

                          SizedBox(height: 30),
                          Text("By tapping Log In, you agree with our", style: TextStyle(fontSize: width*0.04,color: Colors.white)),
                          SizedBox(height: 5),
                          Row(crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(onTap: (){},
                                    child: Text("Terms of Service", style: TextStyle(fontSize: width*0.04,color: Colors.blue))),
                                Text(" and", style: TextStyle(fontSize: width*0.04,color: Colors.white)),
                                InkWell(onTap: (){},
                                    child: Text(" Privacy Policy", style: TextStyle(fontSize: width*0.04,color: Colors.blue)))
                              ]),
                          SizedBox(height: 50),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue),
                            height: height*0.05,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("f",style: TextStyle(color: Colors.white, fontSize: width*0.08, fontWeight: FontWeight.bold)),
                                SizedBox(width: 25),
                                InkWell(onTap: (){
                                  // Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                                },
                                    child: Text("LOGIN WITH FACEBOOK",style: TextStyle(color: Colors.white, fontSize: width*0.04),)),],),),
                          SizedBox(height: 15),
                          InkWell(onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>PhoneNumberLogin()));
                          },
                              child: CustomButton(
                                  btnText: "LOGIN WITH PHONE NUMBER",
                                  color: allColor.buttonColor)),
                          SizedBox(height: 10),
                          Text("Trouble Logging In?",style: TextStyle(color: Colors.white, fontSize: width*0.04),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
        )
    );
  }
}
