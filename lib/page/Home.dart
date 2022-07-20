import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/MyListItem.dart';
import '../widgets/MyPainter.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
          size: Size(
              Get.width,
              (Get.width * 2)
                  .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
          painter: RPSCustomPainter(),
          child: SizedBox(
            width: Get.width,
            height: Get.height,
            child: Padding(
              padding: const EdgeInsets.only(top: 45, left: 25, right: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.place,
                        size: 30,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Boston(Bos)",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Get.width / 1.3),
                        child: const Icon(Icons.settings,
                            color: Colors.white, size: 30),
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      " Where would\nyou want to go?",
                      style: TextStyle(fontSize: 25, color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Material(
                      elevation: 30,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(40.0)),
                      child: TextField(
                        style: const TextStyle(fontSize: 20),
                        cursorColor: const Color(0xffF46526),
                        cursorHeight: 25,
                        cursorWidth: 2,
                        decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(
                              left: 20,
                            ),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(40),
                                borderSide: BorderSide.none),
                            filled: true,
                            suffixIcon: const Icon(
                              Icons.search,
                              color: Colors.black,
                            ),
                            fillColor: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Container(
                          width: 120,
                          height: 50,
                          decoration: BoxDecoration(
                              color: const Color(0xffF67D29),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: Icon(
                                  Icons.flight,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                " Flights",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Icon(
                          Icons.hotel,
                          color: Colors.white,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Hotels",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          "Currently Watched Items",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          "VIEW ALL (12)",
                          style: TextStyle(
                              color: Color(0xffF6802A),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  const MyListItem(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size(90, 30),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            primary: const Color((0xffF6802A))),
                        onPressed: () {},
                        child: const Text("Fly",
                            style:
                                TextStyle(color: Colors.white, fontSize: 19))),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
