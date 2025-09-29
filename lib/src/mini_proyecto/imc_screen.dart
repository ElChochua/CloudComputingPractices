import 'package:flutter/material.dart';
import 'package:fluttertestperron/src/mini_proyecto/result_screen.dart';
class ImcScreen extends StatefulWidget{
  const ImcScreen({super.key});
  @override
  State<ImcScreen> createState() => _ImcScreenState();
}
class _ImcScreenState extends State<ImcScreen> {
  var weight_ctr = TextEditingController();
  var height_ctr = TextEditingController();

  String classification = '';
  String path = "assets/";

  void determineClassification(double imc) {
    path = "assets/";
    switch (imc) {
      case < 18.5:
        this.path = "assets/" + "bad.jpg";
        classification = "Bajo Peso";
        break;
      case >= 18.5 && < 24.9:
        this.path = "assets/" + "ok.jpg";
        classification = "Peso Normal";
        break;
      case >= 25 && < 26.9:
        this.path = "assets/" + "very_bad.jpg";
        classification = "Sobrepeso";
        break;
      case >= 27 && < 29.9:
        this.path = "assets/" + "alert1.jpg";
        classification = "Obesidad";
        break;
      case >= 30 && < 34.9:
        this.path = "assets/" + "alert2.jpg";
        classification = "Obesidad Severa";
        break;
      case >= 40:
        this.path = "assets/" + "alert4.jpg";
        classification = "Obesidad Morbida";
        break;
      default:
        this.path = "assets/" + "Error";
        classification = "Error";
        break;
    }

  }
  void calculateIMC() {
    double weight = double.parse(weight_ctr.text);
    double height = double.parse(height_ctr.text);
    if (height > 0 && weight > 0) {
      double imc = weight / (height * height);
      determineClassification(imc);
      Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ResultPage(imc, classification, path)));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora de IMC'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: weight_ctr,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Peso (en Kilogramos)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: height_ctr,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Estatura (en Metros)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: calculateIMC,
              child: const Text('Calcular IMC'),
            ),
          ],
        ),
      ),
    );
  }
}

