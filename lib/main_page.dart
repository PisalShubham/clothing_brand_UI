import 'package:brand_store_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 412,
            height: 470,
            child: Image.asset(
              'assets/images/page1.png',
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Find The \nBest Collections",
                  style: GoogleFonts.imprima(
                    fontSize: 42,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(13, 13, 14, 1),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 310,
                  height: 48,
                  child: Text(
                    "Get your dream item easily with FashionHub and get other intersting offer",
                    style: GoogleFonts.imprima(
                      fontSize: 15,
                      color: const Color.fromRGBO(121, 119, 128, 1),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 150,
                      height: 62,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(90)),
                        border: Border.all(
                          color: const Color.fromRGBO(13, 13, 14, 1),
                          width: 1.5,
                        ),
                      ),
                      child: Text(
                        "Sign Up",
                        style: GoogleFonts.imprima(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(13, 13, 14, 1),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        width: 150,
                        height: 62,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 122, 0, 1),
                          borderRadius: BorderRadius.all(Radius.circular(90)),
                        ),
                        child: Text(
                          "Sign In",
                          style: GoogleFonts.imprima(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
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
        ],
      ),
    );
  }
}
