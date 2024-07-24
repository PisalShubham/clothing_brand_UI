import 'package:brand_store_app/checkout_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<String> shirtImages = [
    'assets/images/page_2/shirt1.png',
    'assets/images/page_2/shirt4.png',
  ];

  List<String> shirtPrice = ["\$240.32", "\$257.85"];

  List<String> shirtNames = [
    "Premium\nTagerine Shirt",
    "Leather\nTagerine Coart",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBAr
      appBar: AppBar(
        title: Text(
          "Cart",
          style: GoogleFonts.imprima(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(13, 13, 13, 1),
          ),
        ),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios_new,
            size: 28,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Orders",
              style: GoogleFonts.imprima(
                fontSize: 40,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(13, 13, 14, 1),
              ),
            ),
            const SizedBox(height: 34),
            ListView.separated(
                shrinkWrap: true,
                itemCount: shirtImages.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 34),
                itemBuilder: (context, index) {
                  return Slidable(
                    closeOnScroll: true,
                    endActionPane: ActionPane(
                      motion: const ScrollMotion(),
                      extentRatio: 0.2,
                      openThreshold: 0.5,
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 95),
                            width: 92,
                            height: 55,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 122, 0, 1),
                              borderRadius: BorderRadius.horizontal(
                                  left: Radius.circular(40)),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  child:
                                      Image.asset('assets/images/favorite.png'),
                                ),
                                GestureDetector(
                                  child:
                                      Image.asset('assets/images/delete.png'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    child: Container(
                      width: 372,
                      height: 153,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 108,
                            height: 142,
                            child: Image.asset(shirtImages[index],
                                fit: BoxFit.fill),
                          ),
                          const SizedBox(width: 23),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                shirtNames[index],
                                style: GoogleFonts.imprima(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(13, 13, 14, 1),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Yellow\nSize 8",
                                style: GoogleFonts.imprima(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color.fromRGBO(121, 119, 128, 1),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                children: [
                                  Text(
                                    shirtPrice[index],
                                    style: GoogleFonts.imprima(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w600,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  ),
                                  const SizedBox(width: 85),
                                  Text(
                                    "1",
                                    style: GoogleFonts.imprima(
                                      fontSize: 34,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  ),
                                  Text(
                                    textAlign: TextAlign.end,
                                    "x",
                                    style: GoogleFonts.imprima(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          const Color.fromRGBO(13, 13, 14, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(height: 40),
            Container(
              width: 372,
              height: 2,
              color: const Color.fromRGBO(227, 227, 227, 1),
            ),
            const SizedBox(height: 30),
            // Total Payment
            SizedBox(
              width: 372,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Total Items(3)",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$116.00",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Standard Delivery",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$12.00",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Total Payment",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color.fromRGBO(121, 119, 128, 1),
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$126.00",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                ],
              ),
            ),

            const SizedBox(height: 35),
            // Checkout Button
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutPage(),
                    ),
                  );
                },
                child: Container(
                  width: 190,
                  height: 62,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 122, 0, 1),
                    borderRadius: BorderRadius.all(Radius.circular(90)),
                  ),
                  child: Text(
                    "Checkout Now",
                    style: GoogleFonts.imprima(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
