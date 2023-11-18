import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                        fontSize: 28,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    children: [
                      TextSpan(
                        text: "Salmao",
                        style: GoogleFonts.nunito(
                            fontSize: 52,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ]),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const MainCard()
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
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
            Container(
              height: 60,
              width: 270,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: Colors.green.withOpacity(0.8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Ajouter à la carte",
                      style: GoogleFonts.nunito(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                ],
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
          height: 350,
          width: 350,
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
          right: -190,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(210),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 5,
                    blurRadius: 10,
                  )
                ]),
            child: Image.asset("assets/food-4.png", height: 380),
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
              const Stack(
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.blue,
                  ),
                  Positioned(
                      right: -20,
                      child: CircleAvatar(
                          radius: 20, backgroundColor: Colors.red)),
                  Positioned(
                      right: -45,
                      child: CircleAvatar(
                          radius: 20, backgroundColor: Colors.yellow))
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
        const Positioned(
          bottom: -50,
          left: 20,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                    label: "Salade", price: "\$7", image: "assets/food-4.png"),
                SizedBox(
                  width: 35,
                ),
                FoodCard(
                    label: "Viande", price: "\$25", image: "assets/food-3.png"),
                SizedBox(
                  width: 35,
                ),
                FoodCard(
                    label: "Salade", price: "\$25", image: "assets/food-4.png"),
              ],
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
          height: 120,
          width: 120,
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
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "+\$$price",
                style: GoogleFonts.nunito(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          right: -25,
          bottom: 10,
          child: Container(
            height: 80,
            width: 80,
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
              height: 80,
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
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                  width: 0.5,
                )),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
          ),
          const CircleAvatar(
            radius: 28,
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
    );
  }
}
