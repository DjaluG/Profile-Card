import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ProfileScreen(),
    );
  }
}

const darkColor = Color.fromARGB(255, 0, 0, 0);

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var montserrat = TextStyle(
      fontSize: 12,
    );
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Container(
              constraints: BoxConstraints(maxWidth: 400),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 150,
                    child: Stack(
                      children: [
                        ClipPath(
                          clipper: AvatarClipper(),
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: darkColor,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 11,
                          top: 50,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 50,
                                backgroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSadDLcqaFRcbcZlAZqgL97CedGmt-UaPF4IA&usqp=CAU"),
                              ),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Djalu Galang",
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Web Developer",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: darkColor,
                                    ),
                                  ),
                                  const SizedBox(height: 8)
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 30,
                    ),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Instagram Account: \n GitHub Account: ",
                              style: montserrat,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              "Born: \n Education: ",
                              style: montserrat,
                            ),
                          ],
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("@dja_luu", style: montserrat),
                            Text("Tezuka Karlsefni", style: montserrat),
                            const SizedBox(height: 16),
                            Text("14.04.2006", style: montserrat),
                            Text("Wikrama", style: montserrat),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "6280",
                              style: buildMontserrat(
                                const Color(0xFF000000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Subscribers",
                              style: buildMontserrat(darkColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: const VerticalDivider(
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "1745",
                              style: buildMontserrat(
                                const Color(0xFF000000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Followers",
                              style: buildMontserrat(darkColor),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50,
                          child: const VerticalDivider(
                            color: Color(0xFF9A9A9A),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "163",
                              style: buildMontserrat(
                                const Color(0xFF000000),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Videos",
                              style: buildMontserrat(darkColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextStyle buildMontserrat(
    Color color, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: fontWeight,
    );
  }
}

class AvatarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    return Path()
      ..lineTo(0, size.height)
      ..lineTo(8, size.height)
      ..arcToPoint(Offset(114, size.height), radius: Radius.circular(1))
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
