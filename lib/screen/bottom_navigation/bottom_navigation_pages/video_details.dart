import 'package:flutter/material.dart';
import 'package:tuntun_ui/screen/comment_page/comment.dart';
class VideosDetails extends StatefulWidget {
  const VideosDetails({Key? key}) : super(key: key);

  @override
  _VideosDetailsState createState() => _VideosDetailsState();
}

class _VideosDetailsState extends State<VideosDetails> {
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
                      image: AssetImage("assets/girls6.jpg"), fit: BoxFit.fitHeight),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 80),
                          child: Text("Following", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        SizedBox(width: 20),
                        Text("For You", style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold)),
                        SizedBox(width: 80),
                        Icon(Icons.notifications, color: Colors.white,size: 30,)
                      ],
                    ),
                  ),
                  SizedBox(height: 150),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Spacer(),
                      Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover),
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(360)),
                          height: height*0.05,
                          width: width*0.11),
                    ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Spacer(),
                      Column(
                        children: [
                          Icon(Icons.favorite, color: Colors.red,size: 40,),
                          Text("10.0K", style: TextStyle(color: Colors.white),)
                        ],
                      )
                    ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Spacer(),
                      Column(
                        children: [
                          Icon(Icons.remove_red_eye,size: 40, color: Colors.white),
                          Text("2.8M", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Spacer(),
                      Column(
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>CommentPage()));
                            },
                              child: Icon(Icons.message,size: 40, color: Colors.white)),
                          Text("11.0K", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Spacer(),
                      Column(
                        children: [
                          Icon(Icons.share,size: 40, color: Colors.white,),
                          Text("76.0K", style: TextStyle(color: Colors.white))
                        ],
                      )
                    ]
                    ),
                  ),

                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text("@fintory", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17)),),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text("We build digital", style: TextStyle(color: Colors.white))),
                        Padding(
                          padding: const EdgeInsets.all(3),
                          child: Text("products.", style: TextStyle(color: Colors.white))),
                      ])),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Row(
                      children: [
                        Icon(Icons.audiotrack, color: Colors.white,size: 20,),
                        Text("Original sound - @Fintory", style: TextStyle(color: Colors.white)),

                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
