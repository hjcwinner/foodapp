import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/constants.dart';

import 'categorytile.dart';
import 'detailpage.dart';
import 'foodcard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: ThemeData(
          fontFamily: "Poppins",
          scaffoldBackgroundColor: kWhiteColor,
          primaryColor: kPrimaryColor,
          textTheme:
              TextTheme(headline5: TextStyle(fontWeight: FontWeight.bold))),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Container(
          padding: EdgeInsets.all(10),
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: kPrimaryColor.withOpacity(.26)
          ),
          child: Container(
            padding: EdgeInsets.all(16),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: kPrimaryColor),
                child: SvgPicture.asset('assets/icons/plus.svg'),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 50),
              child: Align(
                  alignment: Alignment.topRight,
                  child: SvgPicture.asset(
                    'assets/icons/menu.svg',
                    height: 11,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "Simple way to find \nTasty food",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryTitle(
                    title: "All",
                    active: true,
                  ),
                  CategoryTitle(
                    title: "Italian",
                  ),
                  CategoryTitle(
                    title: "Asian",
                  ),
                  CategoryTitle(
                    title: "Chiness",
                  ),
                  CategoryTitle(
                    title: "Burgers",
                  )
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kBorderColor)),
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  FoodCard(
                    image: "assets/images/image_1.png",
                    price: "50",
                    title: "Vegan salad bowl",
                    description:
                        "Vegan salad bowlVegan salad bowlVegan salad bowlVegan salad bowl",
                    carlory: "540k",
                    ingri: "with rol tomato",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                  ),
                  FoodCard(
                    image: "assets/images/image_2.png",
                    price: "50",
                    title: "Vegan salad bowl",
                    description:
                        "Vegan salad bowlVegan salad bowlVegan salad bowlVegan salad bowl",
                    carlory: "540k",
                    ingri: "with rol tomato",
                    press: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailPage()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
