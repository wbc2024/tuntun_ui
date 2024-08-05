
import 'package:flutter/material.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/chat_details_page.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Chat")),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatDetails()));
                          },
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(children: [
                                Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        image: DecorationImage(
                                            image: AssetImage("assets/girls4.jpg"), fit: BoxFit.cover),
                                        color: Colors.deepOrangeAccent,
                                        borderRadius: BorderRadius.circular(360)),
                                    height: height*0.07,
                                    width: width*0.15),
                                SizedBox(width: width*0.02),
                                Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Natsha Malkin", style: TextStyle(fontSize: width*0.04, fontWeight: FontWeight.bold)),
                                      SizedBox(height: width*0.01),
                                      Text("Curabitur vulputate arcu odio", style: TextStyle(fontSize: width*0.03)),
                                      SizedBox(height: width*0.01),
                                      Text("29 minutes ago", style: TextStyle(fontSize: width*0.03)),
                                    ]),
                              ]
                              ),
                              SizedBox(height: height*0.01,),
                              Divider(),

                            ],
                          ),
                        ),
                      );
                    }),
                )
              ],
            ),
          ),
        ));
  }
}
