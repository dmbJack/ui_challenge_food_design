import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_food/screens/foods_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 239, 234, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            const TopBar(),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                      text: 'Bienvenue \n',
                      style: GoogleFonts.nunito(
                          fontSize: 28.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                      children: [
                        TextSpan(
                          text: "Salmao",
                          style: GoogleFonts.nunito(
                              fontSize: 52.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            const MainCard()
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.share,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  size: 30,
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodsScreen()));
              },
              child: Container(
                height: 45.h,
                width: 210.w,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(90),
                    color: const Color.fromRGBO(102, 204, 0, 0.8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ajouter à la carte",
                        style: GoogleFonts.nunito(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    CircleAvatar(
                      radius: 25.w,
                      backgroundColor: const Color.fromRGBO(102, 204, 0, 1),
                      child: const Icon(
                        Icons.navigate_next,
                        color: Colors.white,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 280.h,
          width: 280.w,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: const Offset(0, 3),
                )
              ],
              borderRadius: BorderRadius.circular(30)),
        ),
        Positioned(
          top: -20,
          right: -190.w,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(210.w),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                  )
                ]),
            child: Image.asset("assets/food-1.png", width: 320.w),
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Salade",
                style: GoogleFonts.nunito(color: Colors.black, fontSize: 26),
              ),
              Text(
                "\$25",
                style: GoogleFonts.nunito(color: Colors.black, fontSize: 44),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      "assets/user-1.jpg",
                      width: 40.w,
                      height: 40.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: -20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/user-2.jpg",
                        width: 40.w,
                        height: 40.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    right: -45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        "assets/user-3.jpg",
                        width: 40.w,
                        height: 40.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                ],
              ),
              Text(
                'Rick, Stan, Agata',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                '7 recommandation',
                style: GoogleFonts.nunito(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Colors.grey),
              )
            ],
          ),
        ),
        Positioned(
          bottom: -110.h,
          left: -30,
          child: SizedBox(
            height: 200.h,
            width: 1.sw,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const FoodCard(
                      label: "Salade",
                      price: "\$7",
                      image: "assets/food-1.png"),
                  SizedBox(
                    width: 35.w,
                  ),
                  const FoodCard(
                      label: "Viande",
                      price: "\$25",
                      image: "assets/food-2.png"),
                  SizedBox(
                    width: 35.w,
                  ),
                  const FoodCard(
                      label: "Salade",
                      price: "\$25",
                      image: "assets/food-3.png"),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class FoodCard extends StatelessWidget {
  final String label;
  final String price;
  final String image;
  const FoodCard({
    super.key,
    required this.label,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          height: 100.h,
          width: 110.w,
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 10,
                )
              ],
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: GoogleFonts.nunito(
                    fontSize: 20.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                "+$price",
                style: GoogleFonts.nunito(
                    fontSize: 16.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          right: -25.w,
          bottom: 10,
          child: Container(
            height: 70.h,
            width: 70.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Image.asset(
              image,
              width: 65.w,
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50.w,
            width: 50.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                  width: 0.5,
                )),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/user-1.jpg",
              width: 50.w,
              height: 50.w,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
