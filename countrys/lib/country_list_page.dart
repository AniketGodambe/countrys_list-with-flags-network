import 'package:countrys/controller.dart';
import 'package:countrys/country_details_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryListPage extends StatefulWidget {
  const CountryListPage({Key? key}) : super(key: key);

  @override
  State<CountryListPage> createState() => _CountryListPageState();
}

class _CountryListPageState extends State<CountryListPage> {
  Controller get controller => Get.put(Controller());
  bool isloading = true;
  @override
  void initState() {
    controller.getCountryList().then((value) {
      setState(() {
        isloading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        title: const Text(
          "Country List ",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: isloading
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            )
          : SingleChildScrollView(
              scrollDirection: Axis.vertical,
              physics: const BouncingScrollPhysics(),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const Divider(
                              color: Colors.red,
                            ),
                        scrollDirection: Axis.vertical,
                        physics: const BouncingScrollPhysics(),
                        itemCount: controller.countryList.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              Get.to(() => CountryDetailsPage(
                                  countrybyId: controller.countryList[index]));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    controller.countryList[index].countryName
                                        .toString(),
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  const SizedBox(height: 10),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                )
              ]),
            ),
    );
  }
}
