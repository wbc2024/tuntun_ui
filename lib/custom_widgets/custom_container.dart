import 'package:flutter/material.dart';
class CustomContainer extends StatefulWidget {
  double height;
  var child;

  CustomContainer({Key? key,
    required this.height,
    required this.child,
  }) : super(key: key);

  @override
  _CustomContainerState createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)),
      width: width,
      height: widget.height,
      child: widget.child,
    );
  }
}
