import 'package:flutter/material.dart';
import 'login_page.dart';

class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final List<String> chatList = [
    "Ardi Zebua",
    "Budi",
    "Cindy",
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chat List"),
        backgroundColor: Colors.blue,
      ),

      body: ListView.builder(
        itemCount: chatList.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person),
            ),

            title: Text(chatList[index]),

            subtitle: const Text("Klik untuk membuka"),

            trailing: const Icon(Icons.arrow_forward_ios),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LoginPage(nama: chatList[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}