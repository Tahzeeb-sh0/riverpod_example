import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final staticProvider = Provider((Ref ref){
  return "Hello word";
});

final intProvider = Provider((Ref ref){
  return 100;
});

final doubleProvider = Provider((Ref ref){
  return 90.5;
});

class Lec2 extends ConsumerWidget {
  const Lec2({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    final result = ref.watch(staticProvider);
    final resultInt = ref.watch(intProvider);
    final resultDouble = ref.watch(doubleProvider);

    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(result + "---" + intProvider.toString() + "---" + resultDouble.toString()),),
    );
  }
}
