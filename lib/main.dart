import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/constants.dart';

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
        Container(
            // color: Colors.grey[500],
            margin: EdgeInsets.only(left: 20),
            height: 400,
            width: 270,
            // color: Colors.blue,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 380,
                    width: 250,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(34),
                        color: kPrimaryColor.withOpacity(0.06)),
                  ),
                ),
                Positioned(
                  left: 10,
                  top: 10,
                  child: Container(
                      height: 181,
                      width: 181,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor.withOpacity(0.15))),
                ),
                Positioned(
                  top: 0,
                  left: -50,
                  child: Container(
                    height: 184,
                    width: 276,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/image_1.png"))),
                  ),
                ),
                Positioned(
                  top: 80,
                  right:20,
                    child: Text(
                  "\$20",
                  style: Theme.of(context).textTheme.headline5.copyWith(
                    color: kPrimaryColor
                  ),
                ))
              ],
            ))
      ],
    ));
  }
}

class CategoryTitle extends StatelessWidget {
  final String title;
  final bool active;
  const CategoryTitle({Key key, this.active = false, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title,
        style: Theme.of(context).textTheme.button.copyWith(
            color: active ? kPrimaryColor : kTextColor.withOpacity(0.4)),
      ),
    );
  }
}
