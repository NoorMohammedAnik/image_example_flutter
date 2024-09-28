import 'package:flutter/material.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("New Page"),
      ),
      body: Text("This is new page",style: TextStyle(
        fontSize: 30
      ),),
    );
  }
}
