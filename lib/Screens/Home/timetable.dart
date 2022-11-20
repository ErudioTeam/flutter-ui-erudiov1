import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TTScreen extends StatefulWidget {
  const TTScreen({Key? key}) : super(key: key);

  @override
  State<TTScreen> createState() => _TTScreenState();
}

class _TTScreenState extends State<TTScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Color(0xFF3D747D),
        //elevation: 0,
        //toolbarHeight: 170,
        title: const Text("Timetable",
            style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            )),
        centerTitle: true,
        actions: [
          IconButton(
            icon: SvgPicture.asset("assets/icons/share.svg"),
            onPressed: () {},
          )
        ],
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50))),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: SizedBox(),
        ),
      ),
    );
  }
}
