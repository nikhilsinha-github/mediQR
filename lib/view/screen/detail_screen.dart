import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qrreport/controller.dart';

class DetailScreen extends ConsumerWidget {
  final Map<String, dynamic> user;
  const DetailScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "#${user["id"].toString()}",
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            Text(
              "${user["first_name"]} ${user["last_name"]}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 5,
            ),
            child: Text(
              "Medical History",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: user["medical_history"].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hospital: ${user["medical_history"][index]["hospital"]}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Date: ${user["medical_history"][index]["date"]}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "Problem/issue:",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "${user["medical_history"][index]["problem"]}",
                            style: const TextStyle(),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Symptoms:",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Wrap(
                            children: List.generate(
                              user["medical_history"][index]["symptoms"].length,
                              (indexS) => Text(
                                  "${user["medical_history"][index]["symptoms"][indexS]}, "),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Treatment:",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Wrap(
                            children: List.generate(
                              user["medical_history"][index]["treatment"]
                                  .length,
                              (indexS) => Text(
                                  "${user["medical_history"][index]["treatment"][indexS]}, "),
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            "Observation:",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "${user["medical_history"][index]["observation"]}",
                            style: const TextStyle(),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
