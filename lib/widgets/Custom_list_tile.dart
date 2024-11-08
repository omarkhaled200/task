import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomListtile extends StatelessWidget {
  const CustomListtile({super.key, required this.image, required this.title, required this.subtitle, required this.date});
  final String? image;
  final String title;
  final String subtitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(image!),
          ),
           Expanded(
            child: ListTile(
              title: Text(
                title,
                style:const  TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w500),
              ),
              subtitle: Text(
                subtitle,
                style:const TextStyle(color: Colors.black54, fontSize: 14),
              ),
              trailing: Text(
                date,
                style:const TextStyle(color: Colors.black54, fontSize: 12),
              ),
            ),
          )
        ],
      ),
    );
  }
}
