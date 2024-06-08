import 'package:flutter/material.dart';
import 'package:prj_1/Component/BarMenu.dart';
import 'package:prj_1/Component/Constant.dart';
import 'package:prj_1/Component/CustomContainerFisrt.dart';
import 'package:prj_1/Component/CustomSecondContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 65, 46, 67),
              Color.fromARGB(255, 236, 205, 241)
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(7.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              size5,
              const Text(
                "Student Lists",
                style: TextStyle(fontSize: 60, fontFamily: 'aladin'),
              ),
              size5,
              const CustomMenu(),
              const SizedBox(height: 40),
              Row(
                children: [
                  const CustomContainerFisrt(
                      text: "Import file", imgpath: "assets/img/add.jpg"),
                  const SizedBox(width: 19),
                  CustomSecondContainer(
                    ontap: () {
                      Navigator.pushNamed(context, '/table');
                    },
                    Ctext: "Group 01 - ing",
                    path: "assets/img/show.jpg",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
