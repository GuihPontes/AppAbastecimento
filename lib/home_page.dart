// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String Entrada = "Saiba qual a melhor opção para abastecimento do seu carro ";
  String Resultado = "Resultado";

  void _calcular() {
    double precoAlcool = double.parse(_controllerAlcool.text);
    double precoGasolina = double.parse(_controllerGasolina.text);

    if ((precoAlcool / precoGasolina) >= 0.7) {
      setState(() {
        Resultado = "Melhor abastacer com Gasolina";
      });
    } else {
      setState(() {
        Resultado = "Melhor abastecer com Álcool";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Center(child: Text("Álcool ou Gasolina")),
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Image.network(
                "http://complemento.veja.abril.com.br/economia/calculadora-combustivel/img/abre.jpg"),
          ),
          Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Text(
                Entrada,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                textAlign: TextAlign.center,
              )),
          Padding(
              padding: const EdgeInsets.all(24),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Álcool"),
                controller: _controllerAlcool,
              )),
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Gasolina"),
              controller: _controllerGasolina,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: RaisedButton(
              onPressed: _calcular,
              child: const Text("Calcular"),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(Resultado,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)))
        ]),
      )),
    );
  }
}
