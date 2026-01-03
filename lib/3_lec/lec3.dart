import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final countProvider = StateProvider<int>((ref) => 0);



class CountProvider extends ConsumerWidget {
  const CountProvider({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    return Scaffold(
      appBar: AppBar(title: Text("State Provider"),),
      floatingActionButton: FloatingActionButton( onPressed: (){
        ref.read(countProvider.notifier).state ++;
      }),
      body: Center(
          child: Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                final  count = ref.watch(countProvider);
                return Text(count.toString(), style: TextStyle(fontSize: 30,color: Colors.blue,));
              },

    )
      ));
  }
}
