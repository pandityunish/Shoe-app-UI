import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoesapp/features/screens/details_page.dart';
import 'package:shoesapp/features/widgets/showcart__bottombar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List images = [
    {"name": "Nike Shoe", "image": "assets/1.png"},
    {"name": "A Shoe", "image": "assets/2.png"},
    {"name": "Nike Shoe", "image": "assets/3.png"},
    {"name": "Nike Shoe", "image": "assets/4.png"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            color: Color.fromARGB(255, 82, 81, 81),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  showmodelbottomsheet(context);
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_outline,
                  color: Colors.white,
                  size: 30,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                )),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3)
                        ]),
                    child: const Center(
                      child: Icon(Icons.sort),
                    ),
                  ),
                  Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 6,
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 3)
                          ]),
                      child: Badge(
                        badgeColor: Colors.red,
                        badgeContent: const Text("1"),
                        child: const Icon(Icons.notifications),
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 150,
              width: MediaQuery.of(context).size.width * 0.95,
              child: CarouselSlider.builder(
                  itemCount: images.length,
                  itemBuilder: (context, index, realIndex) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailsPage(
                                  name: images[index]["name"],
                                  image: images[index]["image"]),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  color: Colors.grey.withOpacity(0.3))
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                const SizedBox(
                                  height: 150,
                                  width: 150,
                                ),
                                Positioned(
                                    bottom: 15,
                                    left: 8,
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(
                                              255, 82, 81, 81),
                                          borderRadius:
                                              BorderRadius.circular(5)),
                                    )),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Image.asset(
                                      images[index]["image"],
                                      height: 140,
                                    ))
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.5,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 20,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 30),
                                      child: Text(
                                        images[index]["name"],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 30),
                                      child: Text(
                                        "Men's Shoes",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20),
                                      child: SizedBox(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Padding(
                                              padding:
                                                  EdgeInsets.only(left: 30),
                                              child: Text(
                                                "\$50",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red,
                                                    fontSize: 20),
                                              ),
                                            ),
                                            Container(
                                                height: 40,
                                                width: 40,
                                                decoration: BoxDecoration(
                                                    color: const Color.fromARGB(
                                                        255, 59, 59, 59),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    boxShadow: [
                                                      BoxShadow(
                                                          blurRadius: 6,
                                                          color: Colors.grey
                                                              .withOpacity(0.3),
                                                          spreadRadius: 3)
                                                    ]),
                                                child: const Icon(
                                                  Icons.shopping_cart,
                                                  color: Colors.white,
                                                )),
                                          ],
                                        ),
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
                  },
                  options: CarouselOptions(
                      initialPage: 0,
                      height: 240,
                      pageSnapping: true,
                      autoPlay: false,
                      viewportFraction: 1,
                      aspectRatio: 2.2,
                      enlargeCenterPage: true)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                itemBuilder: (context, index) {
                  return Container(
                    height: 140,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 6,
                              color: Colors.grey.withOpacity(0.3),
                              spreadRadius: 3)
                        ],
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Align(
                            alignment: Alignment.center,
                            child: Image.asset(
                              images[index]["image"],
                              height: 120,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            images[index]["name"],
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 10, left: 10),
                          child: Text(
                            "Men's Shoes",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          child: SizedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "\$50",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red,
                                      fontSize: 20),
                                ),
                                Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                        color: const Color.fromARGB(
                                            255, 59, 59, 59),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 6,
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                              spreadRadius: 3)
                                        ]),
                                    child: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.white,
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
