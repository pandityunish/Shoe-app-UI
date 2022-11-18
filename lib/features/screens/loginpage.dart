import 'package:flutter/material.dart';
import 'package:shoesapp/common/colors.dart';
import 'package:shoesapp/features/screens/homepage.dart';
import 'package:shoesapp/features/widgets/textform.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/login.png"),
            const SizedBox(
              height: 20,
            ),
            const CostumTextform(
                hinttext: "Enter email",
                iconData: Icon(
                  Icons.person,
                  color: Colors.black,
                )),
            const SizedBox(
              height: 10,
            ),
            const CostumTextform(
                hinttext: "Enter password",
                iconData: Icon(
                  Icons.lock,
                  color: Colors.black,
                )),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forget Password",
                        style: TextStyle(color: Colors.black),
                      )),
                )),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Homepage(),
                    ));
              },
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: buttoncolor),
                child: const Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Don't Have Account?",
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Sign Up",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
