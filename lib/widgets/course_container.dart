import 'package:edu_app/constants/color.dart';
import 'package:edu_app/models/course.dart';
import 'package:flutter/material.dart';

class CourceContainer extends StatelessWidget {
  final Course course;
  const CourceContainer({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                course.thumbnail,
                height: 60,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.name),
                Text(
                  'Author ${course.author}',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                LinearProgressIndicator(
                  value: course.completedPercentage,
                  backgroundColor: Colors.black12,
                  color: kPrimaryColor,
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
