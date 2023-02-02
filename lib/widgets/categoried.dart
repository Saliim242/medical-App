import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  final String categoryTextName;
  final categoryIconPath;

  CategoriesCard({
    required this.categoryTextName,
    required this.categoryIconPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25),
      child: Container(
        padding: EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: Color(0xffFFE0F4).withOpacity(.8),
          // color: Colors.deepPurple[100],
          borderRadius: BorderRadius.circular(14),
        ),
        child: Row(
          children: [
            Image.asset(
              categoryIconPath,
              height: 30,
            ),
            SizedBox(width: 5),
            Text(
              categoryTextName,
              style: TextStyle(
                color: Color(0xff32313A),
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
