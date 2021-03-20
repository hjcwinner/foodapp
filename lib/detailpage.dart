import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/constants.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: SvgPicture.asset("assets/icons/backward.svg"),
                    ),
                    Container(
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                padding: EdgeInsets.all(7),
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kPrimaryColor.withOpacity(0.3)),
                child: Image.asset(
                  "assets/images/image_1_big.png",
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 25),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Vagan salad bowl \n',
                          style: Theme.of(context).textTheme.title),
                      TextSpan(
                          text: 'With red tomato',
                          style:
                              TextStyle(color: Colors.black.withOpacity(.6))),
                    ])),
                    Text(
                      '\$20',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                  child: Text(
                'Vagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowlVagan salad bowl',
                style: TextStyle(fontSize: 16),
              )),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 185,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                    decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(.3),
                        borderRadius: BorderRadius.circular(27)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add to bag',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        // SizedBox(width: 35),
                        SvgPicture.asset("assets/icons/forward.svg")
                      ],
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.all(10),
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: kPrimaryColor.withOpacity(.4)),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(14),
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kPrimaryColor),
                            child: SvgPicture.asset("assets/icons/bag.svg"),
                          ),
                          Positioned(
                            left: 30,
                            top: 30,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                '0',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.white),
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
