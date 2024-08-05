import 'package:flutter/material.dart';
import 'package:tuntun_ui/screen/authentication/login_phone_&_faccbook.dart';
class CustomTextField extends StatefulWidget {
  String hintText;

  TextEditingController controller;
  bool obsecureVal;

  CustomTextField({Key? key,
    required this.hintText,
    required this.controller,
    required this.obsecureVal,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return TextFormField(
        style: TextStyle(color: Colors.white),
        obscureText: widget.obsecureVal,
        controller: widget.controller,
        cursorColor: allColor.appColor,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(1),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: allColor.buttonColor, width: 3),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: allColor.buttonColor,width: 3),
          ),
          fillColor: Colors.white,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: Colors.grey),
          labelStyle: TextStyle(color: Colors.white),)
    );
  }
}
