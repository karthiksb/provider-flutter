import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/SecondPage.dart';
import 'package:statemanagement/provider/store.dart';
class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.amber ,
        title: Text("Flutter"
        ),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary: Colors.green
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage()));
              },
              child: Text("Second Page "),
            ),
            Text(Provider.of<store>(context).NoOfLikes.toString())
          ],
        ),
      ),
    );
  }
}
