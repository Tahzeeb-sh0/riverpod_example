import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

final textProvider = StateProvider((ref) {
  return "";
});


class ConsumerStateClass extends ConsumerStatefulWidget {
  const ConsumerStateClass({super.key});

  @override
  ConsumerState<ConsumerStateClass> createState() => _ConsumerStateClassState();
}

class _ConsumerStateClassState extends ConsumerState<ConsumerStateClass> {
  late final TextEditingController _controller;



  @override
  void initState() {
    super.initState();

    _controller = TextEditingController();
    _controller.addListener((){
      ref.read(textProvider.notifier).state = _controller.text;
    });


  }

  @override
  Widget build(BuildContext context) {
    final text = ref.watch(textProvider);
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Center(
        child: Column(
          children: [
            TextFormField(controller: _controller,),
            SizedBox(height: 10,),
            Text('Your typed text: $text')

          ],
        ),
      ),
    );
  }
}
