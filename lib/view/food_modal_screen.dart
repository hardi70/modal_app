import 'package:flutter/material.dart';
import 'package:modal_app/data/app_data.dart';
import 'package:modal_app/data/app_data_two.dart';
import 'package:modal_app/res/common/food_3_common.dart';
import 'package:modal_app/res/common/food_common.dart';
import 'package:modal_app/res/constant/images.dart';
import 'package:modal_app/res/constant/strings.dart';

class FoodModalScreen extends StatefulWidget {
  const FoodModalScreen({Key? key}) : super(key: key);

  @override
  State<FoodModalScreen> createState() => _FoodModalScreenState();
}

class _FoodModalScreenState extends State<FoodModalScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 36,
                      width: 330,
                      decoration: BoxDecoration(
                        color: const Color(0x1F767680),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(AppImages.magnifyingglass),
                          const Padding(
                            padding: EdgeInsets.only(right: 50),
                            child: Text(
                              AppStrings.Searchrecipesingredients,
                              style: TextStyle(
                                color: Color(0x993C3C43),
                                fontSize: 17,
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                          Image.asset(AppImages.microphone),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(AppImages.filter),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: 300,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(width: 5),
                    itemCount: menuListtwo.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => Food3Common(
                      text: menuListtwo[index].text,
                      texttwo: menuListtwo[index].texttwo,
                      textthree: menuListtwo[index].textthree,
                      image: menuListtwo[index].image,
                      imagetwo: menuListtwo[index].imagetwo,
                    ),
                  ),
                ),
                const Text(
                  AppStrings.QuickEasy,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 17,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: menuList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => FoodCommon(
                      image: menuList[index].image,
                      text: menuList[index].text,
                    ),
                  ),
                ),
                const Text(
                  AppStrings.Breakfast,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 17,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: secondmenuList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => FoodCommon(
                      image: secondmenuList[index].image,
                      text: secondmenuList[index].text,
                    ),
                  ),
                ),
                const Text(
                  AppStrings.Snacks,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 17,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: thirdmenuList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => FoodCommon(
                      image: thirdmenuList[index].image,
                      text: thirdmenuList[index].text,
                    ),
                  ),
                ),
                const Text(
                  AppStrings.Lunch,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 17,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: fourmenuList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => FoodCommon(
                      image: fourmenuList[index].image,
                      text: fourmenuList[index].text,
                    ),
                  ),
                ),
                const Text(
                  AppStrings.Dinner,
                  style: TextStyle(
                    color: Color(0xFF000000),
                    fontSize: 17,
                    fontFamily: "SF Pro Text",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 250,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => const SizedBox(width: 10),
                    itemCount: fivemenuList.length,
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) => FoodCommon(
                      image: fivemenuList[index].image,
                      text: fivemenuList[index].text,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: const Color(0xFFFFFFFF),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image.asset(
                    AppImages.home,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.Home,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF050353),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImages.Recipes,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.Recipes,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF323232),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImages.calendar,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.Plan,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFF323232),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImages.basket,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.Basket,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF323232),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    AppImages.account,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppStrings.Account,
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF323232),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
