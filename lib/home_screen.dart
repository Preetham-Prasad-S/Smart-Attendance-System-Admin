import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:institute_attendance_system/ciruclar_progres_card.dart';
import 'package:institute_attendance_system/department_tab.dart';
import 'package:institute_attendance_system/linear_progress_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  final List<String> studentYear = ["1st", "2nd", "3rd", "4th"];
  final List<double> studentPercentage = [0.4, 0.8, 0.6, 0.3];
  final List<String> studentPercentageText = ["40%", "50%", "60%", "30%"];
  final List<String> studentDepart = [
    "CSE",
    "ECE",
    "IT",
    "AI&DS",
    "MECH",
    "CIVIL"
  ];
  final int years = 4;
  final int deptartment = 6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 124, 66, 66),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                      icon: Icon(
                        size: 30,
                        Icons.menu_rounded,
                        color: Color.fromARGB(255, 255, 177, 172),
                      )),
                  Text(
                    "Institute Attendance System",
                    style: GoogleFonts.quicksand(
                        color: const Color.fromARGB(255, 255, 177, 172),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        size: 30,
                        Icons.replay_rounded,
                        color: Color.fromARGB(255, 255, 177, 172),
                      )),
                ],
              ),
              SizedBox(height: 28),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CiruclarProgresCard(
                      cardText: "College Attendance",
                      percentage: .3,
                      percentageText: "30 %"),
                  CiruclarProgresCard(
                      cardText: "Today's Present",
                      percentage: .5,
                      percentageText: "5155")
                ],
              ),
              SizedBox(height: 30),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "College Year",
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 177, 172)),
                  ),
                ),
              ),
              SizedBox(
                height: 85 * years.toDouble(),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: years,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 20),
                        LinearProgressCard(
                            year: studentYear[index],
                            percentage: studentPercentage[index],
                            percentText: studentPercentageText[index]),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    "Departments",
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 255, 177, 172)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: SizedBox(
                  height: 28 * 6,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20),
                    itemCount: deptartment,
                    itemBuilder: (context, index) {
                      return DepartmentTab(department: studentDepart[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
