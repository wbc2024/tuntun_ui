import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/video_details.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body:
          Padding(
            padding:  EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.02),
                Row(
                  children: [
                    InkWell(onTap: (){},
                      child: Container(
                          child: Center(child: Text("All")),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(60)),
                          width: width*0.30,
                          height: height*0.05),
                    ),
                    Spacer(),
                    InkWell(onTap: (){},
                      child: Container(
                          child: Center(child: Text("Popular")),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(60)),
                          width: width*0.30,
                          height: height*0.05),
                    ),
                    Spacer(),
                    InkWell(onTap: (){},
                      child: Container(
                          child: Center(child: Text("Following")),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(60)),
                          width: width*0.30,
                          height: height*0.05),
                    ),


                  ],
                ),
                SizedBox(height: height*0.03),
                Expanded(
                  child: GridView.builder(
                      itemCount: 20,
                      gridDelegate: SliverWovenGridDelegate.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 15,
                        pattern: [
                          WovenGridTile(
                            4 / 7,
                            alignment: AlignmentDirectional.centerEnd,
                          ),
                        ],
                      ),
                      itemBuilder: (context, index){
                        return InkWell(onTap: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>VideosDetails()));
                        },
                          child:
                          Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/girls3.jpg"), fit: BoxFit.fitHeight),
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15),
                                  child: Row(
                                    children: [
                                      Spacer(),
                                      Text("2:30", style: TextStyle(color: Colors.white),)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                    height: height*0.26),
                                Row(children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(),
                                          image: DecorationImage(
                                              image: AssetImage("assets/girl1.jpeg"), fit: BoxFit.cover),
                                          color: Colors.deepOrangeAccent,
                                          borderRadius: BorderRadius.circular(360)),
                                      height: height*0.04,
                                      width: width*0.08),
                                  SizedBox(width: width*0.02),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Natsha Malkin", style: TextStyle(fontSize: width*0.04,
                                            color: Colors.white,fontWeight: FontWeight.bold)),
                                        Text("2 minutes ago", style: TextStyle(fontSize: width*0.03,color: Colors.white)),
                                      ]
                                  ),
                                ]
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                )

              ],
            ),
          )
      ),
    );
  }
}
