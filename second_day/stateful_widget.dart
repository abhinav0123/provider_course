import 'package:flutter/material.dart';

class StatefulWidget1 extends StatefulWidget {
  const StatefulWidget1({super.key});

  @override
  State<StatefulWidget1> createState() => _StatefulWidget1State();
}

class _StatefulWidget1State extends State<StatefulWidget1> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title:Text('Subscribe'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(DateTime.now().toString()),
          Container(
            child: Center(child: Text(count.toString(),
            style: const TextStyle(fontSize: 50),),),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          count++;
          print(count);
          setState(() {
            
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
