import 'dart:math';

class FackeApiService {

  Future<String> fetchGreetng() async {
    await Future.delayed(const Duration(seconds: 2));


    if(Random().nextDouble() < 0.2){
      throw Exception("Failed to fetch greeting");
    }
      return "Hello from async";

  }
}