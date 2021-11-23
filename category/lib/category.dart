library category;

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Category extends StatelessWidget {
  const Category({Key? key, required this.image, required this.category})
      : super(key: key);

  final ImageProvider image;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            //borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black, width: 2),
          ),
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              height: 40,
              width: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: image),
                  shape: BoxShape.circle,
                  // border:
                  // Border.all(
                  //     color: Colors.transparent, width: 3),
                  //borderRadius: BorderRadius.circular(10),
                  color: Colors.black),
            ),
          ),
        ),
        5.heightBox,
        Flexible(
          child: Container(
            alignment: Alignment.center,
            width: 60,
            child: Text(
              category,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
