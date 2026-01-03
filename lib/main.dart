import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:riverpod_example/4_lec/lec4.dart';
import 'package:riverpod_example/5_lec/lec5.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context , WidgetRef ref) {

    return MaterialApp(

        home: FutureProviderExample(),
    );
  }
}
