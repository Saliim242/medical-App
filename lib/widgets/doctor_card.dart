import 'package:flutter/material.dart';
import 'package:medical_ui_app/model/DoctorsList.dart';
import 'package:medical_ui_app/screens/doctor_details.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({
    Key? key,
    required this.doctor,
  }) : super(key: key);

  final Doctor doctor;

  @override
  Widget build(BuildContext context) {
    var index = 0;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DoctorDetails(
                  doctor: doctor,
                ),
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xffFFE0F4).withOpacity(.8),
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(
              child: Column(
                children: [
                  Hero(
                    tag: '${doctor.imageTag}',
                    child: CircleAvatar(
                      //   backgroundColor: Colors.purple,
                      radius: 40,
                      backgroundImage: AssetImage(
                        doctor.doctorPicture ?? "",
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Color(0xffFcfeff).withOpacity(0.4),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[600],
                        ),
                        SizedBox(width: 5),
                        Text(
                          doctor.doctorRating ?? "",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Hero(
                    tag: '${doctor.textTag}',
                    child: Text(
                      doctor.doctorName ?? "",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  RichText(
                    text: TextSpan(
                      text: doctor.doctorSpecialty ?? "",
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: doctor.doctorYearOfExperience ?? "",
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        TextSpan(
                          text: " y.e",
                          style: TextStyle(
                            color: Color(0xff8a86e2),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// Text(
// "${DoctorSpecialty} y.e",
// style: TextStyle(
// color: Colors.grey[500],
// fontSize: 16,
// ),
// ),
