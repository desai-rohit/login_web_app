import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var gradient = const LinearGradient(colors: [Colors.cyan, Colors.indigo]);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(24),
          height: height / 1.3,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage(
              "assets/bg.png",
            ),
            fit: BoxFit.cover,
          )),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              width < 850
                  ? const SizedBox()
                  : Stack(alignment: Alignment.bottomCenter, children: [
                      Image.asset(
                        "assets/ship.png",
                        width: width / 3,
                      ),
                      SizedBox(
                          child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: SizedBox(
                            width: width / 4,
                            child: Text(
                                "Explore Demo Limited's Premier Logistics and Freight Services",
                                style: GoogleFonts.publicSans(
                                  textStyle: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ))),
                      ))
                    ]),
              SizedBox(
                width: width / 20,
              ),
              SizedBox(
                width: width < 850 ? width / 2 : width / 3.8,
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "assets/Logo.png",
                          width: 28,
                          height: 28,
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        GradientText(
                          'DEMO',
                          style: GoogleFonts.righteous(
                              textStyle: const TextStyle(
                            fontSize: 24.0,
                          )),
                          colors: const [Colors.cyan, Colors.indigo],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: const EdgeInsets.all(24),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(24),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ]),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 48,
                                backgroundColor: const Color(0XFFE9F5FE),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: ClipOval(
                                    child: Image.asset(
                                      "assets/logo.png",
                                      width: 70,
                                      height: 70,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              height: 24,
                            ),
                            Text(
                              textAlign: TextAlign.center,
                              "Welcome Back",
                              style: GoogleFonts.publicSans(
                                  textStyle: const TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold)),
                            ),
                            const Text(
                              "We are glad to see you",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(
                              height: 32,
                            ),
                            SizedBox(
                                width: width / 5,
                                child: const TextField(
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Username"),
                                )),
                            const SizedBox(
                              height: 16,
                            ),
                            SizedBox(
                                width: width / 5,
                                child: const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Password"),
                                )),
                            const SizedBox(
                              height: 32,
                            ),
                            Container(
                                width: width / 5,
                                height: 40,
                                decoration: BoxDecoration(
                                    gradient: gradient,
                                    borderRadius: BorderRadius.circular(16)),
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.transparent,
                                      shadowColor: Colors.transparent,
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "LOGIN",
                                      style: TextStyle(color: Colors.white),
                                    ))),
                            const SizedBox(
                              height: 16,
                            ),
                            const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        "2024 DEMO GROUP. All Rights Reserved",
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
