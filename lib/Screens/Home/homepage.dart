import 'package:erudiov1/screens/Home/assignments.dart';
import 'package:erudiov1/screens/Home/attendance.dart';
import 'package:erudiov1/screens/Signup/signup_screen.dart';
import 'package:erudiov1/screens/Home//contacts.dart';
import 'package:erudiov1/screens/Home/results.dart';
import 'package:erudiov1/screens/Home//statistics.dart';
import 'package:erudiov1/screens/Home/timetable.dart';
import 'package:erudiov1/screens/welcome/welcome_screen.dart';
import 'package:erudiov1/widgets/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
//import 'components/sign_in_form.dart';

class HomeScreen extends StatefulWidget {
  // It's time to validat the text field
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // But still same problem, let's fixed it
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("erudio",
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            )),
        //leading: IconButton(
        //icon: SvgPicture.asset("assets/icons/menued.svg"),
        //onPressed: () {
        //NavigationDrawerWidget();
        //_moveToScreen2(context);
        //Navigator.pop(context);
        //},
        //),
        actions: [
          IconButton(
            icon: ClipOval(child: Image.asset("assets/images/user_pic.png")),
            onPressed: () {},
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/signin.svg",
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            // Now it takes 100% of our height
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: SafeArea(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //Padding(padding: const EdgeInsets.all(10)),
                    Column(
                      children: [
                        //Padding(padding: EdgeInsets.only(top: 170)),
                        Container(
                          //alignment: Alignment(0, 0),
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                              color: Color(0xFFF1F0F2),
                              borderRadius: BorderRadius.only(
                                //topLeft: Radius.circular(20),
                                topRight: Radius.circular(50),
                              )),
                          child: Column(
                            children: [
                              //Spacer(),
                              //const SizedBox(height: defaultPadding * 2),
                              //SignInForm(formKey: _formKey),
                              const SizedBox(height: defaultPadding),
                              //Padding(padding: EdgeInsets.only(top: )),

                              Text("Children",
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.black,
                                  )),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(right: 30)),
                                  IconButton(
                                    icon: ClipOval(
                                        child: Image.asset(
                                            "assets/images/search_doc_1.png")),
                                    onPressed: () {},
                                  ),
                                  Text("Peter",
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color: Colors.black,
                                      )),
                                  Padding(padding: EdgeInsets.only(right: 100)),
                                  IconButton(
                                    icon: ClipOval(
                                        child: Image.asset(
                                            "assets/images/search_doc_2.png")),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  Text("Harry",
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 20,
                                        color: Colors.black,
                                      )),
                                ],
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 100)),
                              AspectRatio(
                                aspectRatio: 1.65,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: EdgeInsets.only(top: 30),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ServiceCard(
                                            svgSrc:
                                                "assets/icons/attendance.svg",
                                            titled: "Attendance",
                                            onClicked: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AttendanceScreen()),
                                            ),
                                          ),
                                          ServiceCard(
                                            svgSrc:
                                                "assets/icons/timetable.svg",
                                            titled: "Timetable",
                                            onClicked: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const TTScreen()),
                                            ),
                                          ),
                                          ServiceCard(
                                            svgSrc:
                                                "assets/icons/statistics.svg",
                                            titled: "Statistics",
                                            onClicked: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const StatisticsScreen()),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 30)),
                                      SvgPicture.asset(
                                        "assets/icons/line.svg",
                                      ),
                                      Padding(
                                          padding: EdgeInsets.only(top: 30)),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ServiceCard(
                                            svgSrc: "assets/icons/contacts.svg",
                                            titled: "Contacts",
                                            onClicked: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ContactScreen()),
                                            ),
                                          ),
                                          ServiceCard(
                                            svgSrc:
                                                "assets/icons/assignments.svg",
                                            titled: "Assignments",
                                            onClicked: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const AssignmentScreen()),
                                            ),
                                          ),
                                          ServiceCard(
                                            svgSrc: "assets/icons/results.svg",
                                            titled: "Results",
                                            onClicked: () => Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ResultScreen()),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(height: defaultPadding),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String svgSrc;
  final String titled;
  VoidCallback? onClicked;
  //final String screen;
  ServiceCard(
      {Key? key,
      required this.svgSrc,
      required this.titled,
      required this.onClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        IconButton(
          icon: SvgPicture.asset(svgSrc),
          onPressed: onClicked,
        ),
        //SvgPicture.asset(svgSrc),
        Text(titled,
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.normal,
              fontSize: 15,
              color: Colors.black54,
            )),
      ],
    );
  }
}
