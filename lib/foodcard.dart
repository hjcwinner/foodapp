import 'package:flutter/material.dart';

import 'constants.dart';

class FoodCard extends StatelessWidget {
  final String image;
  final String price;
  final String title;
  final String description;
  final String carlory;
  final String ingri;
  final Function press;

  const FoodCard(
      {Key key,
      this.image,
      this.price,
      this.title,
      this.description,
      this.carlory,
      this.ingri, this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap: 
          press,
          child: Container(
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
                      color: kPrimaryColor.withOpacity(0.15)),
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
                      image: DecorationImage(image: AssetImage(image))),
                ),
              ),
              Positioned(
                  top: 80,
                  right: 20,
                  child: Text(
                    "\$$price",
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .copyWith(color: kPrimaryColor),
                  )),
              Positioned(
                top: 200,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.black),
                    ),
                    Text(
                      ingri,
                      style: TextStyle(color: Colors.black.withOpacity(0.4)),
                    ),
                    Text(
                      description,
                      maxLines: 4,
                      style: TextStyle(color: Colors.black.withOpacity(0.7)),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}