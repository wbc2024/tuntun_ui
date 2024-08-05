import 'package:flutter/material.dart';
import 'package:tuntun_ui/custom_widgets/custom_button.dart';
import 'package:tuntun_ui/custom_widgets/custom_text_field.dart';
import 'package:tuntun_ui/screen/authentication/login_phone_&_faccbook.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_controller.dart';
class PhoneNumberLogin extends StatefulWidget {
  const PhoneNumberLogin({Key? key}) : super(key: key);

  @override
  _PhoneNumberLoginState createState() => _PhoneNumberLoginState();
}
TextEditingController _phoneNumberController= TextEditingController();
class _PhoneNumberLoginState extends State<PhoneNumberLogin> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: allColor.backgrounColor,
          appBar: AppBar(backgroundColor: Colors.transparent,
              leading: Padding(
                  padding:  EdgeInsets.all(20),
                  child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: (Icon(Icons.arrow_back_ios, color: allColor.buttonColor,size: 40))))),
          body: SingleChildScrollView(
            child:
            Padding(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 450),
                  Text("Phone Number", style: TextStyle(fontSize: width*0.06, color: Colors.white, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  CustomTextField(
                      hintText: "",
                      controller: _phoneNumberController,
                      obsecureVal: false),
                  SizedBox(height: 40),
                  InkWell(onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>BottomNavigation()));
                  },
                      child: CustomButton(
                          btnText: "CONTINUE",
                          color: allColor.buttonColor)),
                  SizedBox(height: 20),
                  Center(
                      child: InkWell(
                          onTap: (){},
                          child: Text.rich(
                              TextSpan(
                                  text: 'LOG IN BY ',
                                  style: TextStyle(fontSize: width*0.04, color: Colors.white),
                                  children: <TextSpan>[
                                    TextSpan( text: ' EMAIL',style: TextStyle(decoration: TextDecoration.underline))])))),

                ],
              ),
            ),
          ),
        ));
  }
}
