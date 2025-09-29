import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget{
  final double imc;
  final String classification;
  final String imagePath;
  const ResultPage(this.imc, this.classification, this.imagePath, {super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Resultado del IMC'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Tu IMC es:', style: TextStyle(fontSize: 20)),
            Text(
              imc.toStringAsFixed(2),
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              classification,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            if (imagePath.isNotEmpty) Image.asset(imagePath, height: 200),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Volver a calcular'),
            ),
          ],
        ),
      ),
    );
  }
}