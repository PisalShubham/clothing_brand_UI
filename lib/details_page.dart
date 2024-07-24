import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 30, right: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_new,
                    size: 30,
                  ),
                ),
                Text(
                  "Details",
                  style: GoogleFonts.imprima(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(13, 13, 13, 1),
                  ),
                ),
                Image.asset('assets/images/Save.png'),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              height: 445,
              child: Image.asset(
                'assets/images/page_3/page3.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  width: 209,
                  height: 83,
                  child: Text(
                    "Premium Tagerine Shirt",
                    style: GoogleFonts.imprima(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(13, 13, 13, 1),
                    ),
                  ),
                ),
                const Spacer(),
                Image.asset('assets/images/page_3/color1.png'),
                const SizedBox(width: 8),
                Image.asset('assets/images/page_3/color2.png'),
                const SizedBox(width: 8),
                Image.asset('assets/images/page_3/color3.png'),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              "Size",
              style: GoogleFonts.imprima(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(13, 13, 13, 1),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "S",
                  style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "M",
                  style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Container(
                  width: 45,
                  height: 44,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(13, 13, 14, 1),
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                  child: Text(
                    "L",
                    style: GoogleFonts.imprima(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                Text(
                  "XL",
                  style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
                Text(
                  "XXL",
                  style: GoogleFonts.imprima(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromRGBO(121, 119, 128, 1),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "\$257.85",
                  style: GoogleFonts.imprima(
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(13, 13, 13, 1),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 162,
                    height: 62,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 122, 0, 1),
                      borderRadius: BorderRadius.all(Radius.circular(90)),
                    ),
                    child: Text(
                      "Add To Cart",
                      style: GoogleFonts.imprima(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
