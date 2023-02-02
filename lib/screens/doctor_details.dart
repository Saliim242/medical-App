import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_ui_app/model/DoctorsList.dart';

class DoctorDetails extends StatelessWidget {
  DoctorDetails({required this.doctor});

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    // Qeebta Rowga Ugu Hosryo Waaye
    final myTextRowStyle = TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF302f51));
    final sized = SizedBox(height: 20);


    return Scaffold(
      //
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //====== Stack
            Stack(
              children: [
                Container(
                  //color: Color(0xffFFE0F4).withOpacity(.8),
                  color: Colors.grey[300],
                  child: Hero(
                    tag: '${doctor.imageTag}',
                    child: Image(
                      image: AssetImage(doctor.doctorPicture ?? ""),
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 20,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF302f51),
                      size: 25,
                    ),
                  ),
                ),
                Positioned(
                  //width: 750,
                  top: 22,
                  right: 20,
                  child: Icon(
                    Icons.bookmark_add_outlined,
                    color: Color(0xFF302f51),
                    size: 25,
                  ),
                ),
              ],
            ),
            //===--===
            SizedBox(height: 0),
            Expanded(
              child: Container(
                // width: double.infinity,
                // padding: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                  color: Color(0xfffcffef), // Color(0xfffcfeff),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(),

                      Container(
                        padding: EdgeInsets.only(left: 25, top: 30),
                        child: Hero(
                          tag: '${doctor.textTag}',
                          child: Text(
                            doctor.doctorName ?? "",
                            style: TextStyle(
                              color: Color(0xFF302f51),
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      // SubTite With Icon Heart
                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Row(
                            children: [
                              Icon(
                                Icons.favorite_sharp,
                                color: Colors.red,
                              ),
                              SizedBox(width: 8),
                              Text(
                                doctor.doctorSpecialty ?? "",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                doctor.doctorHospital ?? "",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          )),
                      // End SubTite With Icon Heart
                      SizedBox(height: 20),
                      // Body Text
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 25),
                        child: Text(
                          doctor.doctorDescription ?? "",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      // Very Complex One Row And Coloumn
                      Container(
                        padding: EdgeInsets.only(left: 25, right: 25),
                        child: IntrinsicHeight(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //  Experience
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Experience ",
                                      style: myTextRowStyle,
                                    ),
                                  ),
                                  sized,
                                  Row(
                                    children: [
                                      Text(
                                        doctor.doctorYearOfExperience ?? "",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff8a86e2),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Yr",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff8a86e2),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              // Divider
                              VerticalDivider(
                                color: Color(0xFF302f51),
                                width: 0,
                                thickness: 1,
                              ),

                              //Patient
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Patient",
                                      style: myTextRowStyle,
                                    ),
                                  ),
                                  sized,
                                  Row(
                                    children: [
                                      Text(
                                        "${doctor.doctorNumberOfPatient}",
                                        style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff8a86e2),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Text(
                                        "Ps",
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff8a86e2),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              VerticalDivider(
                                color: Color(0xFF302f51),
                                width: 0,
                                thickness: 1,
                              ),
                              // Rating Part
                              Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "Rating",
                                      style: myTextRowStyle,
                                    ),
                                  ),
                                  sized,
                                  Text(
                                    doctor.doctorRating ?? "",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Color(0xff8a86e2),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      //  Last One
                      Padding(
                        padding: const EdgeInsets.only(top: 25, bottom: 25),
                        child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(12),
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent, //Color(0xFF302f51),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                CupertinoIcons.conversation_bubble,
                                color: Color(0xfffcfffe),
                                size: 25,
                              ),
                            ),
                            SizedBox(width: 15),
                            Container(
                              //alignment: Alignment.center,
                              // margin: EdgeInsets.symmetric(horizontal: 60),
                              padding: EdgeInsets.all(18),
                              // width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xff8a86e2).withOpacity(.8),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Make an Appointment ",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
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
          ],
        ),
      ),
    );
  }
}
