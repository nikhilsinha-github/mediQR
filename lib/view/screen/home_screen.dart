import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qrreport/controller.dart';
import 'package:qrreport/view/screen/detail_screen.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MediQR'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: ref.watch(usersProvider).length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    DetailScreen(user: ref.watch(usersProvider)[index]),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text(
                    "#${ref.watch(usersProvider)[index]["id"].toString()}",
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                  ),
                  child: Text(
                    "${ref.watch(usersProvider)[index]["first_name"]} ${ref.watch(usersProvider)[index]["last_name"]}",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                const Divider(),
              ],
            ),
          );
        },
      ),
    );
  }
}
