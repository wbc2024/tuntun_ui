import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tuntun_ui/screen/authentication/login_phone_&_faccbook.dart';
import 'package:tuntun_ui/screen/bottom_navigation/bottom_navigation_pages/edite_profile.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
              toolbarHeight: 70,
              centerTitle: true,
              leading: InkWell(onTap: (){
                Navigator.pop(context);
              },
                  child: Icon(Icons.arrow_back, color: Colors.black)),
              actions: [
                Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Icon(Icons.more_vert, color: Colors.black))],
              title: Text("Profile", style: TextStyle(color: Colors.black)),
              backgroundColor: Colors.white),

          body: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Center(
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              image: DecorationImage(
                                  image: AssetImage("assets/girls6.jpg"), fit: BoxFit.cover),
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.circular(360)),
                          height: height*0.10,
                          width: width*0.21))),
              Center(
                  child: Text("Natsha Malkin", style: TextStyle(fontSize: width*0.05))),
              Padding(padding:  EdgeInsets.only(left: 70, right: 70, top: 20, bottom: 5),
                child: Row(
                  children: [
                    Row(children: [Column(children: [
                      Text("0"),
                      Text("Folloing")])]),
                    Spacer(),
                    Row(children: [Column(children: [
                      Text("124,9K"),
                      Text("Followers")])]),
                    Spacer(),
                    Row(children: [Column(children: [
                      Text("1,4M"),
                      Text("Likes")])]),
                  ],
                ),
              ),
              Padding(padding:  EdgeInsets.only(left: 30, right: 30, top: 20, bottom: 5),
                  child: Row(
                      children: [
                        Container(
                            color: allColor.buttonColor,
                            height: height*0.05,
                            width: width*0.40,
                            child: Center(
                                child: Text("Follow", style: TextStyle(color: Colors.white)))),
                        Spacer(),
                        Column(children: [
                          Icon(Icons.message),
                          Text("Message")]),
                        Spacer(),
                        Column(children: [
                          InkWell(onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>EditeProfile()));
                          },
                              child: Icon(Icons.settings)),
                          Text("Settings")]),

                      ])),

              SizedBox(height: height*0.05),
              Expanded(
                child: GridView.builder(
                    itemCount: 20,
                    gridDelegate: SliverWovenGridDelegate.count(
                      crossAxisCount: 3,
                      mainAxisSpacing: 5,
                      crossAxisSpacing: 5,
                      pattern: [
                        WovenGridTile(
                          5 / 7,
                          alignment: AlignmentDirectional.centerEnd,
                        ),
                      ],
                    ),
                    itemBuilder: (context, index){
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/girls6.jpg"), fit: BoxFit.cover),
                            color: Colors.red),
                      );
                    }),
              )
            ],
          ),

        ));
  }
}
