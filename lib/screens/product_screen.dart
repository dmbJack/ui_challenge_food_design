import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge_food/models/product_model.dart';

class ProductScreen extends StatelessWidget {
  final ProductModel product;
  const ProductScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(236, 239, 234, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 250.h,
                    width: double.infinity,
                  ),
                  Positioned(
                    top: -120.h,
                    right: 0,
                    left: 0,
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.cover,
                      width: 1.sw,
                    ),
                  ),
                  Positioned(
                    top: 50.h,
                    left: 20.w,
                    child: Container(
                      padding: EdgeInsets.only(left: 8.w),
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.w),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.adaptive.arrow_back,
                            size: 30.w,
                          )),
                    ),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: GoogleFonts.poppins(
                      fontSize: 35, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      size: 35,
                    ))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "${product.kCal} kcal",
              style: GoogleFonts.poppins(
                  fontSize: 16, color: Colors.black.withOpacity(0.6)),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [CheckList(), MiniProduct()],
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              "Mais pratos saudaveis",
              style: GoogleFonts.poppins(
                  fontSize: 18.sp, fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...ProductModel.products.map((e) {
                  return FoodCard(
                      label: e.name, price: e.price, image: e.image);
                })
              ],
            ),
          )
        ],
      ),
    );
  }
}

class MiniProduct extends StatelessWidget {
  const MiniProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 140.w,
          width: 140.w,
        ),
        Positioned(
            child: Image.asset(
          'assets/food-2.png',
          height: 65.w,
          width: 65.w,
          fit: BoxFit.cover,
        )),
        Positioned(
            right: 0,
            child: Image.asset(
              'assets/food-2.png',
              height: 65.w,
              width: 65.w,
              fit: BoxFit.cover,
            )),
        Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/food-2.png',
              height: 65.w,
              width: 65.w,
              fit: BoxFit.cover,
            )),
      ],
    );
  }
}

class CheckList extends StatefulWidget {
  const CheckList({
    super.key,
  });

  @override
  State<CheckList> createState() => _CheckListState();
}

class _CheckListState extends State<CheckList> {
  Map<String, bool> listChecked = {};
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckLine(
          isSelected: listChecked.containsKey("1") ? true : false,
          label: "3 tipos de molhos",
          onChanged: (value) {
            setState(() {
              if (!listChecked.containsKey("1")) {
                listChecked.addAll({"1": value!});
              } else {
                listChecked.remove("1");
              }
            });
          },
        ),
        CheckLine(
          isSelected: listChecked.containsKey("2") ? true : false,
          label: "Alfas Americana",
          onChanged: (value) {
            setState(() {
              if (!listChecked.containsKey("2")) {
                listChecked.addAll({"2": value!});
              } else {
                listChecked.remove("2");
              }
            });
          },
        ),
        CheckLine(
          isSelected: listChecked.containsKey("3") ? true : false,
          label: "Alfas roxa",
          onChanged: (value) {
            setState(() {
              if (!listChecked.containsKey("3")) {
                listChecked.addAll({"3": value!});
              } else {
                listChecked.remove("3");
              }
            });
          },
        ),
        CheckLine(
          isSelected: listChecked.containsKey("4") ? true : false,
          label: "Rucula",
          onChanged: (value) {
            setState(() {
              if (!listChecked.containsKey("4")) {
                listChecked.addAll({"4": value!});
              } else {
                listChecked.remove("4");
              }
            });
          },
        ),
        CheckLine(
          isSelected: listChecked.containsKey("5") ? true : false,
          label: "Tomate cereja",
          onChanged: (value) {
            setState(() {
              if (!listChecked.containsKey("5")) {
                listChecked.addAll({"5": value!});
              } else {
                listChecked.remove("5");
              }
            });
          },
        ),
        CheckLine(
          isSelected: listChecked.containsKey("6") ? true : false,
          label: "Salmao grelhado",
          onChanged: (value) {
            setState(() {
              if (!listChecked.containsKey("6")) {
                listChecked.addAll({"6": value!});
              } else {
                listChecked.remove("6");
              }
            });
          },
        ),
      ],
    );
  }
}

class CheckLine extends StatelessWidget {
  final String label;
  final void Function(bool?)? onChanged;
  final bool isSelected;
  const CheckLine({
    super.key,
    required this.label,
    required this.onChanged,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        children: [
          Checkbox.adaptive(value: isSelected, onChanged: onChanged),
          Text(
            label,
            style: GoogleFonts.poppins(
                fontSize: 14.sp,
                color: Colors.black,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
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
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10),
      child: Stack(
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
      ),
    );
  }
}
