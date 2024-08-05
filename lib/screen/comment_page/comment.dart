import 'package:flutter/material.dart';
class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}
TextEditingController _commentController= TextEditingController();
class _CommentPageState extends State<CommentPage> {
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
              child: SingleChildScrollView(
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [

                          InkWell(onTap: (){
                            Navigator.pop(context);},
                            child: Container(
                                child: Center(child: Icon(Icons.arrow_back_ios)),
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10)),
                                height: height*0.05,
                                width: width*0.10),
                          ),
                          Spacer(),
                          Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/girls4.jpg"), fit: BoxFit.cover),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              height: height*0.05,
                              width: width*0.10)])),
                    SizedBox(height: 300),
                    Container(
                      color: Colors.grey,
                      height: height*3/6,
                      width: width,
                      child: Column(
                        children: [
                          Padding(padding: const EdgeInsets.all(10),
                            child: Row(children: [
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls4.jpg"), fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360)),
                                  height: height*0.05,
                                  width: width*0.10),
                              SizedBox(width: width*0.02),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Everhart Tween", style: TextStyle(fontSize: width*0.04,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                                    SizedBox(height: width*0.01),
                                    Text("Thanks for shareing doctor", style: TextStyle(fontSize: width*0.03, color: Colors.white)),
                                  ]),
                            ]
                            ),
                          ),
                          Padding(padding: const EdgeInsets.all(10),
                            child: Row(children: [
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls2.jpg"), fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360)),
                                  height: height*0.05,
                                  width: width*0.10),
                              SizedBox(width: width*0.02),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Bonebrake Mash", style: TextStyle(fontSize: width*0.04,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                                    SizedBox(height: width*0.01),
                                    Text("They treat immune system disorders", style: TextStyle(fontSize: width*0.03, color: Colors.white)),
                                  ]),
                            ]
                            ),
                          ),
                          Padding(padding: const EdgeInsets.all(10),
                            child: Row(children: [
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls5.jpg"), fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360)),
                                  height: height*0.05,
                                  width: width*0.10),
                              SizedBox(width: width*0.02),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Handler Wack", style: TextStyle(fontSize: width*0.04,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                                    SizedBox(height: width*0.01),
                                    Text("This is the largest directory", style: TextStyle(fontSize: width*0.03, color: Colors.white)),
                                  ]),
                            ]
                            ),
                          ),
                          Padding(padding: const EdgeInsets.all(10),
                            child: Row(children: [
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls6.jpg"), fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360)),
                                  height: height*0.05,
                                  width: width*0.10),
                              SizedBox(width: width*0.02),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Comfort Love", style: TextStyle(fontSize: width*0.04,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                                    SizedBox(height: width*0.01),
                                    Text("Thanks for shareing doctor", style: TextStyle(fontSize: width*0.03, color: Colors.white)),
                                  ]),
                            ]
                            ),
                          ),
                          Padding(padding: const EdgeInsets.all(10),
                            child: Row(children: [
                              Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls4.jpg"), fit: BoxFit.cover),
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(360)),
                                  height: height*0.05,
                                  width: width*0.10),
                              SizedBox(width: width*0.02),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Everhart Tween", style: TextStyle(fontSize: width*0.04,
                                        fontWeight: FontWeight.bold, color: Colors.white)),
                                    SizedBox(height: width*0.01),
                                    Text("Thanks for shareing doctor", style: TextStyle(fontSize: width*0.03, color: Colors.white)),
                                  ]),
                            ]
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: TextFormField(
                                controller: _commentController,
                                decoration: InputDecoration(
                                    fillColor: Colors.white70,
                                    filled: true,
                                    suffixIcon: Icon(Icons.emoji_emotions_outlined, color: Colors.red),
                                    prefixIcon: Icon(Icons.card_giftcard, color: Colors.red,),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.grey)),
                                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    hintText: "Add a Comment......",
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(30),
                                        borderSide: BorderSide(color: Colors.grey)))),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
