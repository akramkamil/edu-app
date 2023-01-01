import 'package:edu_app/constants/color.dart';
import 'package:edu_app/models/category.dart';
import 'package:edu_app/widgets/circle_botton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/category_card.dart';
import '../widgets/search_testfield.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({super.key});

  @override
  State<FeaturedScreen> createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: const [
                AppBar(),
                Body(),
              ],
            ),
          ),
        ));
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Explore Categories",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "See All",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: kPrimaryColor),
                ))
          ]),
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: categoryList.length,
            padding: const EdgeInsets.symmetric(
              horizontal: 26,
              vertical: 8,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
                mainAxisSpacing: 24),
            itemBuilder: (context, index) {
              return CategoryCard(category: categoryList[index]);
            })
      ],
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
        gradient: LinearGradient(
            colors: [Color(0xff887ff2), Color(0xff6849ef)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello, Admin \nGood Morning",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              CircleButton(icon: Icons.notifications, onPressed: () {})
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField(),
        ],
      ),
    );
  }
}
