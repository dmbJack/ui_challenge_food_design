import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_food/models/product_model.dart';
import 'package:ui_challenge_food/screens/product_screen.dart';

class FoodsScreen extends StatelessWidget {
  const FoodsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 239, 234, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Container(
                  height: 50.w,
                  width: 50.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.close_outlined,
                        size: 30.w,
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50.w),
                  child: Image.asset(
                    'assets/user-1.jpg',
                    width: 50.w,
                    height: 50.w,
                    fit: BoxFit.cover,
                  ),
                )
              ]),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Plats",
                style: GoogleFonts.poppins(
                    fontSize: 32.sp, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...ProductModel.products.map((e) {
                      return FullCardFood(
                        label: e.name,
                        price: e.price,
                        image: e.image,
                        userImage: e.userImage,
                        isSelected: e.name == "Salade" ? true : false,
                        isBlackFriday: e.name == "Salade" ? true : false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      ProductScreen(product: e)));
                        },
                      );
                    }),
                    // const FullCardFood(
                    //   label: "Salade",
                    //   price: "25",
                    //   image: "assets/food-4.png",
                    //   userImage: ["assets/user-1.jpg"],
                    //   isSelected: true,
                    // ),
                    // SizedBox(
                    //   width: 20.h,
                    // ),
                    // const FullCardFood(
                    //   label: "Viande",
                    //   price: "25",
                    //   image: "assets/food-3.png",
                    //   userImage: ["assets/user-1.jpg", "assets/user-2.jpg"],
                    //   isSelected: false,
                    // ),
                    // SizedBox(
                    //   width: 20.h,
                    // ),
                    // const FullCardFood(
                    //   label: "Crudité",
                    //   price: "21",
                    //   image: "assets/food-5.png",
                    //   userImage: ["assets/user-1.jpg"],
                    //   isSelected: false,
                    // ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...ProductModel.products.map((e) {
                      return FullCardFood(
                        label: e.name,
                        price: e.price,
                        image: e.image,
                        userImage: e.userImage,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductScreen(
                                        product: e,
                                      )));
                        },
                      );
                    }),
                    // const FullCardFood(
                    //   label: "Crudité",
                    //   price: "29",
                    //   image: "assets/food-5.png",
                    //   userImage: ["assets/user-1.jpg"],
                    //   isSelected: false,
                    // ),
                    // SizedBox(
                    //   width: 20.h,
                    // ),
                    // const FullCardFood(
                    //   label: "Viande",
                    //   price: "18",
                    //   image: "assets/food-3.png",
                    //   userImage: ["assets/user-1.jpg", "assets/user-2.jpg"],
                    //   isSelected: false,
                    // ),
                    // SizedBox(
                    //   width: 20.h,
                    // ),
                    // const FullCardFood(
                    //   label: "Salade",
                    //   price: "11",
                    //   image: "assets/food-4.png",
                    //   userImage: ["assets/user-1.jpg"],
                    // ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(236, 239, 234, 1),
                ),
                child:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.cloud)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.flood_outlined)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(236, 239, 234, 1),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.breakfast_dining_sharp)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(236, 239, 234, 1),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.date_range_outlined)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(236, 239, 234, 1),
                ),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.control_point)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                width: 50.w,
                height: 50.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black.withOpacity(0.5),
                    width: 0.5,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromRGBO(236, 239, 234, 1),
                ),
                child: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.food_bank)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FullCardFood extends StatelessWidget {
  final String label;
  final String price;
  final String image;
  final List<String> userImage;
  final bool isBlackFriday;
  final bool isSelected;
  final void Function()? onTap;
  const FullCardFood({
    super.key,
    required this.label,
    required this.price,
    required this.image,
    required this.onTap,
    this.userImage = const [],
    this.isBlackFriday = false,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    double userAvatarSpace = 10;
    double userAvatarCount = 0;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            padding: const EdgeInsets.all(10),
            height: 160.h,
            width: 130.w,
            decoration: BoxDecoration(
                border: Border.all(
                  color: isSelected
                      ? Colors.red.withOpacity(1)
                      : Colors.transparent,
                  width: 2,
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: isSelected
                        ? Colors.black.withOpacity(0.2)
                        : Colors.transparent,
                    spreadRadius: 2,
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: GoogleFonts.nunito(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "+\$$price",
                  style: GoogleFonts.nunito(
                      fontSize: 16.sp, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            right: -15.w,
            bottom: 10,
            child: Container(
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        image,
                      ),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(80),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 2,
                      blurRadius: 15,
                      offset: const Offset(0, 3),
                    ),
                  ]),
              // child: Image.asset(
              //   image,
              //   width: 100.w,
              //   fit: BoxFit.cover,
              // ),
            ),
          ),
          isBlackFriday
              ? Positioned(
                  right: 22.w,
                  top: 18.h,
                  child: CircleAvatar(
                    radius: 15.w,
                    backgroundColor: Colors.red,
                    child: Text(
                      "25%",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 16),
                    ),
                  ),
                )
              : const SizedBox(),
          ...userImage.map((image) {
            userAvatarCount++;
            userAvatarSpace += 10;
            if (userAvatarCount > 3) {
              return const SizedBox();
            }
            return Positioned(
              bottom: 15.h,
              left: userAvatarSpace.h,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.w),
                child: Image.asset(
                  image,
                  width: 30.w,
                  height: 30.w,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
