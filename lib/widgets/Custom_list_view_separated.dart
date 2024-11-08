import 'package:flutter/material.dart';
import 'package:task/Chat_screen.dart';
import 'package:task/widgets/Custom_list_tile.dart';

class Customlsitviewseparated extends StatelessWidget {
  Customlsitviewseparated({super.key});

  final List<Map<String, String>> data = [
    {
      'image': 'assets/images/2.jpeg',
      "title": "Omar Maged",
      "subtitle": 'how are you my friend 🥰 ?',
      "date": '9:15pm'
    },
    {
      'image': 'assets/images/3.jpg',
      "title": "Ali Abdelrady",
      "subtitle": 'Welcome bro 🤝',
      "date": '5:00pm'
    },
    {
      'image': 'assets/images/5.jpg',
      "title": "Mohamed Mohsen",
      "subtitle": 'thanks ♥',
      "date": '7:00pm'
    },
    {
      'image': 'assets/images/duck2003.png',
      "title": "Omar Khaled",
      "subtitle": 'Good bye ♥👋 ',
      "date": '7:00pm'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.separated(
              itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            // تمرير اسم المستخدم عند النقر
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ChatScreen(
                    username: data[index]['title']!,
                    image: data[index]['image']!,
                  );
                },
              ),
            );
          },
          child: CustomListtile(
            image: data[index]['image']!,
            title: data[index]['title']!,
            subtitle: data[index]['subtitle']!,
            date: data[index]['date']!,
          ),
        );
      },
          separatorBuilder: (context, index) => const Divider(),
          itemCount: data.length);
  }
}
