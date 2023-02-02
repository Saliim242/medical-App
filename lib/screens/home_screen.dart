import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:medical_ui_app/model/DoctorsList.dart';
import 'package:medical_ui_app/widgets/categoried.dart';
import 'package:medical_ui_app/widgets/doctor_card.dart';
import 'package:provider/provider.dart';

import '../themes/theme_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    this.doctor,
  }) : super(key: key);

  final Doctor? doctor;

  @override
  Widget build(BuildContext context) {
    final themeService = Provider.of<ThemeService>(context, listen: false);
    return Scaffold(
      // Button Navigator
      bottomNavigationBar: GNav(
        style: GnavStyle.google,
        color: Color(0xFF302f51),
        activeColor: Color(0xff8a86e2),
        gap: 8.0,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
          ),
          GButton(
            icon: CupertinoIcons.conversation_bubble,
            text: "Message",
          ),
          GButton(
            icon: Icons.notifications_none,
            text: "Notifications",
          ),
          GButton(
            icon: CupertinoIcons.calendar,
            text: "Calendar",
          ),
        ],
      ),
      backgroundColor: Colors.grey[300], //
      ///Color(0xfffcfeff), //
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              // AppBar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Salim Abuubakar",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                    // This User Image
                    // Container(
                    //   child: CircleAvatar(
                    //     radius: 20,
                    //     backgroundImage: AssetImage("images/dd.jpg"),
                    //   ),
                    // ),

                    GestureDetector(
                      onTap: () {
                        themeService.darkTheme = !themeService.darkTheme;
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.deepPurple[100], //Color(0xffFFE0F4),
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(14),
                          child: Icon(
                            themeService.darkTheme
                                ? Icons.sunny
                                : Icons.dark_mode,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),

              // How do you fea
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xffFFE0F4),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      children: [
                        //Image Positions
                        Image(
                          image: AssetImage("images/doctorDetails.png"),
                          fit: BoxFit.cover,
                          alignment: AlignmentDirectional.bottomCenter,
                        ),
                        SizedBox(width: 25),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "How do you feel ?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 21,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                "Fill out your medical car right now ?",
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(height: 14),
                              Container(
                                padding: EdgeInsets.all(15),
                                decoration: BoxDecoration(
                                  color: Color(0xff8a86e2),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: Center(
                                  child: Text(
                                    "Get "
                                    "Started",
                                    style: TextStyle(
                                      color: Color(0xfffcfeff),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              // End  How do you fea
              SizedBox(height: 25),
              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color(0xffFFE0F4).withOpacity(.8),
                    //Color(0xffFFE0F4).withOpacity(.7),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Ho"
                          "w Can We Help You ? ",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        letterSpacing: 0.8,
                      ),
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              // End Search Bar

              SizedBox(height: 25),
              // categories
              Container(
                height: 70,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    CategoriesCard(
                      categoryTextName: "Dentist",
                      categoryIconPath: "icons/tooth (1).png",
                    ),
                    CategoriesCard(
                      categoryTextName: "Surgeon",
                      categoryIconPath: "icons/scalpel (1).png",
                    ),
                    CategoriesCard(
                      categoryTextName: "Pulmonologist",
                      categoryIconPath: "icons/lungs.png",
                    ),
                    CategoriesCard(
                      categoryTextName: "Cardiologist",
                      categoryIconPath: "icons/heart.png",
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),

              // Doctor List
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Doctor list",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),

              // Displaying Doctor Lists
              Container(
                  height: 190,
                  child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: topDoctors.length,
                    itemBuilder: (context, index) =>
                        DoctorCard(doctor: topDoctors[index]),
                  )),
              // ButtonNavigatorPage(),
            ],
          ),
        ),
      ),
    );
  }
}
