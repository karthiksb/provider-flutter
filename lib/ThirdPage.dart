import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement/FirstPage.dart';
import 'package:statemanagement/provider/store.dart';
class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    var store_ = Provider.of<store>(context);
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
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>FirstPage()));
              },
              child: Text("First Page"),
            ),
          ),
          Text(Provider.of<store>(context).NoOfLikes.toString()),
          ElevatedButton(onPressed: (){
            Provider.of<store>(context,listen: false).decreseLikes();
          }, child: Text("decrease like"))
        ],
      ),
    );
  }
}
