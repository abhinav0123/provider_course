import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) { 
      final countProvider = Provider.of<CountProvider>(context,listen:false);
      countProvider.setCount();
    });
  }
  @override

  Widget build(BuildContext context) {
      final countProvider = Provider.of<CountProvider>(context,listen:false);
    print('build');
    return Scaffold(
    
      appBar: AppBar(title:const Text('Provider state'),),
      body: Center(
        child:Consumer<CountProvider>(builder:(context,value,child){
       
          print('Only this widget builds');
        return Text(countProvider.count.toString(),style: const TextStyle(fontSize: 50),);
        },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          countProvider.setCount();

        },
        child:  Icon(Icons.add),
      ),
    );
  }
}
