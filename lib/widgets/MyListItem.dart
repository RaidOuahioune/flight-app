import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyListItem extends StatelessWidget {
  const MyListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          separatorBuilder: (context, index) {
            return const SizedBox(width: 15);
          },
          scrollDirection: Axis.horizontal,
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 30),
              child: Container(
                width: Get.width / 3 + 20,
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    Container(
                        height: 200,
                        width: Get.width / 3 + 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffF6802A)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 130, left: 10),
                              child: Text("Las vegas",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                            ),
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(top: 8.0, left: 10),
                                  child: Text("Feb 2019",
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 227, 220, 220))),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8.0, left: 20),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xffF1F0EE)),
                                    alignment: Alignment.center,
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 2, horizontal: 6),
                                      child: Text(
                                        "45%",
                                        style: TextStyle(fontSize: 15),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 10),
                      child: Row(
                        children: const [
                          Text(
                            "\$399",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "(\$1000)",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 157, 162, 167),
                                  decoration: TextDecoration.lineThrough),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
          itemCount: 12),
    );
  }
}
