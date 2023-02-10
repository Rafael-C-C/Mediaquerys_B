import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: double.infinity,
      color: Colors.red.shade100,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Sidebar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
          ],
        ),
      ),
    );
  }
}
