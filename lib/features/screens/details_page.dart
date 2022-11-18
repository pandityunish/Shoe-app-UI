import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final String name;
  final String image;
  const DetailsPage({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 55,
                width: MediaQuery.of(context).size.width * 0.5,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 82, 81, 81),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Add To Cart",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 28,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 55,
                width: 60,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 82, 81, 81),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
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
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
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
                        child: Icon(Icons.arrow_back),
                      ),
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
                      child: const Icon(
                        Icons.favorite_rounded,
                        color: Colors.red,
                      )),
                ],
              ),
            ),
            Stack(
              children: [
                const SizedBox(
                  height: 300,
                  width: 300,
                ),
                Positioned(
                    bottom: 15,
                    left: 0,
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 82, 81, 81),
                          borderRadius: BorderRadius.circular(5)),
                    )),
                Positioned(
                    bottom: -10,
                    left: -0,
                    child: Image.asset(
                      image,
                      height: 280,
                    ))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const Text(
                          "\$50",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                              fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                        Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                        Icon(
                          Icons.favorite,
                          size: 16,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "This is the shoes which contains lots of features no other shoes gives in this price so you can buy it now and enjoy it and also show to your friends and family.",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Size:",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                    child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
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
                                    child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
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
                                    child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
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
                                    child: Text(
                                  "5",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ))),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
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
