import 'package:flutter/material.dart';
import 'package:mediaquery_b/widgets/vertical/actionbar.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        color: Colors.yellow.shade100,
        child: Column(
          children: [
            const Text("Content",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Container(
              color: Colors.amber,
              width: 200,
              height: 90,
            ),
            const SizedBox(
              height: 10,
            ),
            const ActionBar(),
            Container(
              height: 400,
              width: 300,
              color: Colors.blue.shade100,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.green.shade100,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              const Text("Titulo de producto"),
                              const SizedBox(
                                  width: 100,
                                  child: Text("Descripción de producto")),
                              Row(
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.favorite)),
                                  ElevatedButton(
                                      onPressed: () {},
                                      child: const Text("Añadir"))
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Image.asset(
                            "assets/Foto.jpg",
                            height: 100,
                            width: 100,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
