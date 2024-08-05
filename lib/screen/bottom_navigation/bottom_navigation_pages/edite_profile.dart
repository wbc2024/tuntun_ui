
import 'package:flutter/material.dart';
import 'package:tuntun_ui/custom_widgets/custom_button.dart';
import 'package:tuntun_ui/custom_widgets/custom_text_field.dart';
import 'package:tuntun_ui/screen/authentication/login_phone_&_faccbook.dart';
class EditeProfile extends StatefulWidget {
  const EditeProfile({Key? key}) : super(key: key);

  @override
  _EditeProfileState createState() => _EditeProfileState();
}
TextEditingController _nameController= TextEditingController();
TextEditingController _numberController= TextEditingController();
class _EditeProfileState extends State<EditeProfile> {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
              toolbarHeight: 100,
              centerTitle: true,
              leading: InkWell(onTap: (){
                Navigator.pop(context);},
                  child: Icon(Icons.arrow_back, color: Colors.black)),
              title: Text("Edite Profile", style: TextStyle(color: Colors.black))),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                              image: AssetImage("assets/girls6.jpg")),
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(360)),
                      height: height*0.20,
                      width: width*0.43)),

                  SizedBox(height: height*0.02),
                  Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: CustomButton(
                        btnText: "Change Profile Photos",
                        color: allColor.buttonColor)),
                  SizedBox(height: height*0.05),
                  CustomTextField(
                      hintText: "Change Name",
                      controller: _nameController,
                      obsecureVal: false),
                  SizedBox(height: 30),
                  CustomTextField(
                      hintText: "Change Number",
                      controller: _numberController,
                      obsecureVal: false),
                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.only(right: 250),
                    child: CustomButton(
                        btnText: "Update",
                        color: Colors.green),
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}
