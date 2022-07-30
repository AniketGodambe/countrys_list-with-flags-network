import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'country_list_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: InkWell(
            onTap: () {
              Get.offAll(() => const CountryListPage());
            },
            child: Container(
              alignment: Alignment.center,
              width: Get.width,
              height: Get.height / 8,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(width: 1, color: Colors.black)),
              child: const Text(
                "Proceed",
                style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
