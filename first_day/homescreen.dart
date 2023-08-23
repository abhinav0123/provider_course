import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget {
   HomeScreen({super.key, required String title});

 int x=10;
 // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Provider tutorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(child: Text(x.toString(),style:TextStyle(fontSize:50 ),)),
          ),

        ],
      ),
    floatingActionButton: FloatingActionButton( 
    onPressed:(){
      x++;
      print(x);
      

    },
    child: const Icon(Icons.add),
    ),
    );
  }
}

