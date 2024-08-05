import 'package:flutter/material.dart';
class AudioCall extends StatefulWidget {
  const AudioCall({Key? key}) : super(key: key);

  @override
  _AudioCallState createState() => _AudioCallState();
}

class _AudioCallState extends State<AudioCall> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body:  Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/girls8.JPG"), fit: BoxFit.fitHeight),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ));
  }
}
