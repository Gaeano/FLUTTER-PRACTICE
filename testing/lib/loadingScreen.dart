import 'package:flutter/material.dart';
import 'package:testing/IntroductionPage.dart';

class LoadingScreenMats extends StatelessWidget{
  final VoidCallback? nextPage;

  const LoadingScreenMats({super.key, this.nextPage});
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.white,
    body: Center( 
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(image: AssetImage('assets/jeeplogo.png')),
          const Text('Jeep Jam',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),),
          const Text('Travel with Confidence', 
          style: TextStyle(
            fontSize: 18,
            color: Colors.black
          ),),
          TextButton(
            onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const OnboardingPage1()));
            }, 
            child: Text('Next Pageue', style: TextStyle(
              color: Colors.black,
            ),))
        ],
      ),
    ),
  );
  }
}

