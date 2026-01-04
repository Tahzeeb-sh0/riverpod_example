import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ticketProvider = StreamProvider((_){
  return Stream.periodic(const Duration(seconds: 10),(count)=>count);
});

class TimeScreen extends ConsumerWidget {
  const TimeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncTicker = ref.watch(ticketProvider);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child: asyncTicker.when(
            data: (data)=>Text(" data : $data"),
            error: (error,_)=>Text("error $error"),
            loading: ()=> CircularProgressIndicator(),
        ),
      ),
    );
  }
}