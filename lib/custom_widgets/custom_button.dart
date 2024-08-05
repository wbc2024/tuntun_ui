import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatefulWidget {
  String btnText;
  var color;
  CustomButton({Key? key,
    required this.btnText,
    required this.color,
  }) : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}
class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: height*0.05,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(child: Text(widget.btnText,
          style: TextStyle(color: Colors.white,
              fontSize: width*0.04))),
    );
  }
}
