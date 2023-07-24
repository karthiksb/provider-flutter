import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/ThirdPage.dart';
import 'package:statemanagement/provider/store.dart';
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.amber ,
        title: Text("Flutter"
        ),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              style:ElevatedButton.styleFrom(
                  primary: Colors.yellow
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ThirdPage()));
              },
              child: Text("Third Page"),
            ),
          ),
          Text(Provider.of<store>(context).NoOfLikes.toString()),
          ElevatedButton(onPressed: (){
            Provider.of<store>(context,listen: false).increaseLikes();
          }, child: Text("add like"))
        ],
      ),
    );
  }
}
