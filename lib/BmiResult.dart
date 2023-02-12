import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget{
  final double height;
  final double weight;

  const BmiResult(this.height,this.weight, {super.key});

  @override
  Widget build(BuildContext context){
    final bmi = weight / ((height/100)*(height/100));

    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Result"),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _calcBmi(bmi),
              style: const TextStyle(fontSize: 36),),
            const SizedBox(height: 16),
            _buildIcon(bmi)
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(double bmi){
    if (bmi>=23){
      return const Icon(
        Icons.sentiment_very_dissatisfied,
        color: Colors.green,
        size:100,
      );
    }
    if (bmi>=18.5){
      return const Icon(
        Icons.sentiment_satisfied,
        color: Colors.green,
        size:100,
      );
    }
    else{
      return const Icon(
        Icons.sentiment_dissatisfied,
        color: Colors.green,
        size:100,
      );
    }
  }

  String _calcBmi(double bmi){
    var result = 'low weight';

    if (bmi>=35) {
      result = 'high obesity';
    } else if(bmi>=30){
      result = '2th obesity ';
    } else if(bmi>=25){
      result = '1th obesity ';
    } else if(bmi>=23) {
      result = 'high weight ';
    } else if(bmi>=18.5){
      result = "normal";
    }

    return result;
  }
}