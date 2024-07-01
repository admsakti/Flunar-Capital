import 'package:flutter/material.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Favorites"),
      ),
      body: ListView.separated(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1),
              borderRadius: BorderRadius.circular(20),
            ),
            tileColor: Colors.blue[100],
            leading: const CircleAvatar(),
            title: Text("Title Song ${index + 1}"),
            subtitle: Text("Artist ${index + 1}"),
            trailing: Container(
              width: 50,
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  Text("${index + 1}:00"),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(height: 10),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
