import 'package:flutter/material.dart';
import 'package:tuntun_ui/custom_widgets/custom_text_field.dart';
class VideosAndSearch extends StatefulWidget {
  const VideosAndSearch({Key? key}) : super(key: key);

  @override
  _VideosAndSearchState createState() => _VideosAndSearchState();
}
TextEditingController _videoSearchController = TextEditingController();
class _VideosAndSearchState extends State<VideosAndSearch> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          body: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                        Color(0xffCCF8F7),
                        Color(0xffFCCCDA)],
                      begin: Alignment.center,
                      end: Alignment.bottomCenter)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Padding(padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.arrow_back_ios, color: Colors.blue,),
                          InkWell(onTap: (){},
                              child: Text("Back", style: TextStyle(color: Colors.blue, fontSize: 22))),
                          SizedBox(width: 05),
                          Flexible(
                              child:
                              TextFormField(
                                controller: _videoSearchController,
                                decoration: InputDecoration(
                                  fillColor: Colors.white70,
                                    filled: true,
                                    prefixIcon: Icon(Icons.search),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey)),
                                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                    hintText: "Search",
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.grey))))),
                          SizedBox(width: 05),
                          Icon(Icons.settings_overscan_rounded, size: 60,color: Colors.grey,)
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover
                        )
                      ),
                      height: height*0.20,
                      width: width,),
                    Padding(padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        Container(
                          child: Center(child: Text("#", style: TextStyle(fontSize: 25))),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)),
                            height: height*0.05,
                            width: width*0.10),
                        SizedBox(width: width*0.02),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Copy King", style: TextStyle(fontSize: width*0.04, fontWeight: FontWeight.bold)),
                              SizedBox(height: width*0.01),
                              Text("Favorite Hashing", style: TextStyle(fontSize: width*0.03)),
                            ]),
                        Spacer(),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Center(child: Text("8.8M", style: TextStyle(fontSize: 20))),
                          ),
                        )
                      ]
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(padding: const EdgeInsets.all(2),
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/girls2.jpg"), fit: BoxFit.cover)),
                              height: height*0.20,
                              width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls4.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls5.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),

                        ],
                      ),
                    ),


                    Padding(padding: const EdgeInsets.all(10),
                      child: Row(children: [
                        Container(
                            child: Center(child: Text("#", style: TextStyle(fontSize: 25))),
                            decoration: BoxDecoration(
                                border: Border.all(),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(360)),
                            height: height*0.05,
                            width: width*0.10),
                        SizedBox(width: width*0.02),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Joshim Khan", style: TextStyle(fontSize: width*0.04, fontWeight: FontWeight.bold)),
                              SizedBox(height: width*0.01),
                              Text("Favorite Hashing", style: TextStyle(fontSize: width*0.03)),
                            ]),
                        Spacer(),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Center(child: Text("8.8M", style: TextStyle(fontSize: 20))),
                          ),
                        )
                      ]
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls6.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girl1.jpeg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls2.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),
                          Padding(padding: const EdgeInsets.all(2),
                              child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage("assets/girls3.jpg"), fit: BoxFit.cover)),
                                  height: height*0.20,
                                  width: width*0.30)),

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
