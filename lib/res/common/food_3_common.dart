import 'package:flutter/material.dart';

class Food3Common extends StatelessWidget {
  final String? text;
  final String? texttwo;
  final String? textthree;
  final String? image;
  final String? imagetwo;

  const Food3Common(
      {Key? key,
      this.text,
      this.texttwo,
      this.textthree,
      this.image,
      this.imagetwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text!,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 15,
              fontFamily: "SF Pro Rounded",
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            texttwo!,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 17,
              fontFamily: "SF Pro Text",
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              Text(
                textthree!,
                style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 13,
                  fontFamily: "SF Pro Text",
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Image.asset(image!),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(imagetwo!),
        ],
      ),
    );
  }
}
