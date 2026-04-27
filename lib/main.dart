import 'package:flutter/material.dart';

void main() {
  runApp(TelaComputador());
}

class TelaComputador extends StatefulWidget {
  //quando a tela inicializa
  const TelaComputador({super.key});

  @override
  State<TelaComputador> createState() => _TelaComputadorState();
}

//oque acontece dentro dela
class _TelaComputadorState extends State<TelaComputador> {
  //logica fica antes do segundo override

  int contador = 0; //variavel para computador

  void add() {
    setState(() {
      contador++;
    });
  }

  void sub() {
    setState(() {
      if (contador > 0) {
        contador--;
      }
    });
  }

  void reset() {
    setState(() {
      contador = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Tela Computador"),centerTitle: true),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$contador"), //ou Text(contador.toString())
              Row( mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: add, child: Icon(Icons.add)),
                  TextButton(onPressed: sub, child: Icon(Icons.remove)),
                  TextButton(onPressed: reset, child: Icon(Icons.restore_from_trash_sharp))
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}
