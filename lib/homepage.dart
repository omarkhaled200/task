import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task/widgets/Custom_list_view_separated.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'WhatsApp',
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        elevation: 3,
        actions: const [
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.camera_alt_outlined,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.search,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            FontAwesomeIcons.ellipsisVertical,
            color: Colors.green,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body:  Customlsitviewseparated(),
      floatingActionButton: FloatingActionButton(onPressed: 
      (){},
      backgroundColor: Colors.green[700],
      child: const Icon(Icons.add,color: Colors.white,),
      ),
    );
  }
}
