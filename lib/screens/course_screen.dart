import 'package:edu_app/models/course.dart';
import 'package:edu_app/widgets/custtom_icon_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/course_container.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IntrinsicHeight(
                  child: Stack(
                    children: [
                      Align(
                        child: Text(
                          'Development',
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        child: CustomIconButtom(
                          hight: 35,
                          width: 35,
                          onTap: () => Navigator.pop(context),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Expanded(
                    child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (_, index) {
                          return CourceContainer(course: courses[index]);
                        },
                        separatorBuilder: (context, _) {
                          return const SizedBox(
                            height: 10,
                          );
                        },
                        itemCount: courses.length))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
