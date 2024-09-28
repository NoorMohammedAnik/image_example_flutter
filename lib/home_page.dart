import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_example_flutter/login/new_page.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Image Example"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Image.asset("assets/images/logo.png",width: 200,height: 200,),

            SizedBox(height: 20,),

            Text("Flutter Logo",style: TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),

            Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/c/c8/Muhammad_Yunus_-_World_Economic_Forum_Annual_Meeting_2012.jpg/330px-Muhammad_Yunus_-_World_Economic_Forum_Annual_Meeting_2012.jpg",
              width: 200,height: 200,),

            Text("Dr. Mohammad Yunus",style: TextStyle(
              fontSize: 20,
              color: Colors.blue
            ),),


            ElevatedButton(
                onPressed: (){

                  //this is for showing short msg
                  Fluttertoast.showToast(msg: "Why click me ??");

                  //this is for going one page to another page/screen
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPage()));

                },
                child: Text("Click Me"))



          ],
        ),
      ),
    );
  }
}
