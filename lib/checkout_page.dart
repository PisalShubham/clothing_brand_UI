import 'package:brand_store_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  List<String> paymentModes = [
    'assets/images/page_4/visa.png',
    'assets/images/page_4/american.png',
    'assets/images/page_4/upi.png',
    'assets/images/page_4/paypal.png',
    'assets/images/page_4/applepay.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // AppBAr
        appBar: AppBar(
          title: Text(
            "Checkout",
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
          padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery Address",
                style: GoogleFonts.imprima(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(121, 119, 128, 1),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Image.asset('assets/images/page_4/map.png'),
                  const SizedBox(width: 15),
                  Text(
                    "25/3 Housing Estate,\nSylhet",
                    style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "Change",
                    style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Image.asset('assets/images/page_4/history.png'),
                  const SizedBox(width: 15),
                  Text(
                    "Delivered in next 7 days",
                    style: GoogleFonts.imprima(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(13, 13, 14, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              // Payment Method
              Text(
                "Payment Method",
                style: GoogleFonts.imprima(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(121, 119, 128, 1),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 20,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: paymentModes.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 20),
                  itemBuilder: (context, index) =>
                      Image.asset(paymentModes[index]),
                ),
              ),
              const SizedBox(height: 60),
              Align(
                child: Text(
                  "Add Voucher",
                  style: GoogleFonts.imprima(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: 372,
                height: 72,
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.imprima(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                    children: [
                      TextSpan(
                        text: 'Note : ',
                        style: GoogleFonts.imprima(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 0, 0, 1),
                        ),
                      ),
                      const TextSpan(
                        text: 'Use your order id at the payment. Your Id ',
                      ),
                      TextSpan(
                        text: '#154619 ',
                        style: GoogleFonts.imprima(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(22, 22, 38, 1),
                        ),
                      ),
                      const TextSpan(
                        text:
                            'if you forget to put your order id we can’t confirm the payment.',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
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

              const SizedBox(height: 70),
              // Checkout Button
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
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
                      "Pay Now",
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
        ));
  }
}
