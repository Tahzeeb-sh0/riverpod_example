import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/5_lec/facke_api_service.dart';


final fackeApiProvider = Provider((_)=>FackeApiService());

 final fackApiFutureProvider = FutureProvider((ref) async {
   final service = ref.read(fackeApiProvider);
   return await service.fetchGreetng();
});



class FutureProviderExample extends ConsumerWidget {
  const FutureProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   final greetingAsync = ref.watch(fackApiFutureProvider);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child: greetingAsync.when(
            data: ((futuredata)=> Text(futuredata)),
            error: (error,StackTrace)=> Text(error.toString()),
            loading: () => CircularProgressIndicator(),
      ),),
    );
  }
}

