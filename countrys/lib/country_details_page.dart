import 'package:countrys/country_list_model/datum.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CountryDetailsPage extends StatefulWidget {
  final CountrylistModel countrybyId;
  const CountryDetailsPage({Key? key, required this.countrybyId})
      : super(key: key);

  @override
  State<CountryDetailsPage> createState() => _CountryDetailsPageState();
}

class _CountryDetailsPageState extends State<CountryDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.grey.shade300,
        elevation: 0,
        title: const Text(
          "Country Details ",
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: 180,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Image.network(
                  widget.countrybyId.flag.toString(),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.only(
                    bottom: 20, right: 20, left: 20, top: 20),
                decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Country",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Text(
                          "Country ID",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Text(
                          "Network",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        ),
                        Text(
                          "Network ID",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${widget.countrybyId.countryName}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                        Text(
                          "${widget.countrybyId.countryId}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                        Text(
                          "${widget.countrybyId.network}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                        Text(
                          "${widget.countrybyId.networkId}",
                          style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
