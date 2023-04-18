import 'package:flutter/material.dart';

class FoodCommon extends StatelessWidget {
  final String? image;
  final String? text;
  const FoodCommon({Key? key, this.image, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image!,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 150),
          child: Image.asset("assets/images/Veg_label.png"),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 140),
              child: Text(
                text!,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontFamily: "SF Pro Text",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "15 mins . 200 Cal",
              style: TextStyle(
                color: Color(0xFF909090),
                fontSize: 15,
                fontFamily: "SF Pro Text",
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              children: [
                Image.asset("assets/images/foods_icon.png"),
                const Text(
                  "  10 Ingredients",
                  style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 15,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
