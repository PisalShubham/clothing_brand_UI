import 'package:brand_store_app/cart_page.dart';
import 'package:brand_store_app/details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> shirtImages1 = [
    'assets/images/page_2/shirt1.png',
    'assets/images/page_2/shirt2.png',
  ];

  List<String> shirtPrice1 = ["\$240.32", "\$325.36"];

  List<String> shirtNames1 = [
    "Tagerine Shirt",
    "Leather Coart",
  ];

  List<String> shirtImages2 = [
    'assets/images/page_2/shirt3.png',
    'assets/images/page_2/shirt4.png',
  ];

  List<String> shirtPrice2 = ["\$126.47", "\$257.85"];

  List<String> shirtNames2 = ["Leather Coart", "Leather Coart"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // appBar
          Padding(
            padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Image.asset('assets/images/Menu.png'),
                  const Spacer(),
                  Image.asset('assets/images/Profile.png')
                ],
              ),
              const SizedBox(height: 34),
              Text(
                "Explore",
                style: GoogleFonts.imprima(
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(13, 13, 13, 1),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Best trendy collection!",
                style: GoogleFonts.imprima(
                  fontSize: 18,
                  color: const Color.fromRGBO(121, 119, 128, 1),
                ),
              ),
              const SizedBox(height: 26),
            ]),
          ),
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 33,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    width: 54,
                    height: 32,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 122, 0, 1),
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                    ),
                    child: Text(
                      "All",
                      style: GoogleFonts.imprima(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    "Men",
                    style: GoogleFonts.imprima(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    "Women",
                    style: GoogleFonts.imprima(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    "Kids",
                    style: GoogleFonts.imprima(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                  const SizedBox(width: 35),
                  Text(
                    "Other",
                    style: GoogleFonts.imprima(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  SizedBox(
                    width: 165,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: shirtImages1.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                      itemBuilder: (context, index) => (index % 2 == 0)
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailsPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 195,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          child: Image.asset(
                                            shirtImages1[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                          child: Image.asset(
                                              'assets/images/page_2/bag.png'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      shirtPrice1[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            const Color.fromRGBO(13, 13, 13, 1),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      shirtNames1[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailsPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 140,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          child: Image.asset(
                                            shirtImages1[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                          child: Image.asset(
                                              'assets/images/page_2/bag.png'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      shirtPrice1[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            const Color.fromRGBO(13, 13, 13, 1),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      shirtNames1[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: 160,
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: shirtImages2.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                      itemBuilder: (context, index) => (index % 2 != 0)
                          ? GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailsPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 195,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          child: Image.asset(
                                            shirtImages2[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                          child: Image.asset(
                                              'assets/images/page_2/bag.png'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      shirtPrice2[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            const Color.fromRGBO(13, 13, 13, 1),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      shirtNames2[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DetailsPage(),
                                  ),
                                );
                              },
                              child: SizedBox(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      clipBehavior: Clip.none,
                                      alignment: AlignmentDirectional.bottomEnd,
                                      children: [
                                        Container(
                                          width: 165,
                                          height: 140,
                                          decoration: const BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(16)),
                                          ),
                                          child: Image.asset(
                                            shirtImages2[index],
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Positioned(
                                          right: 10,
                                          child: Image.asset(
                                              'assets/images/page_2/bag.png'),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      shirtPrice2[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color:
                                            const Color.fromRGBO(13, 13, 13, 1),
                                      ),
                                    ),
                                    const SizedBox(height: 2),
                                    Text(
                                      shirtNames2[index],
                                      style: GoogleFonts.imprima(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: const Color.fromRGBO(
                                            121, 119, 128, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            child: Container(
              width: 168,
              height: 2,
              margin: const EdgeInsets.only(top: 12),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 122, 0, 0),
                    Color.fromRGBO(255, 122, 0, 1),
                    Color.fromRGBO(255, 122, 0, 0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        unselectedLabelStyle: GoogleFonts.imprima(),
        unselectedItemColor: Colors.black,
        selectedItemColor: const Color.fromRGBO(255, 122, 0, 1),
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Image.asset('assets/images/Home.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Image.asset('assets/images/search.png'),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartPage(),
                  ),
                );
              },
              child: Image.asset('assets/images/cart.png'),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              child: Image.asset('assets/images/settings.png'),
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
