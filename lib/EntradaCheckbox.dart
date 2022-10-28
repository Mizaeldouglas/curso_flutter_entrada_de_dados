import 'package:flutter/material.dart';

class EntradaCheckBox extends StatefulWidget {
  @override
  State<EntradaCheckBox> createState() => _EntradaCheckBoxState();
}

class _EntradaCheckBoxState extends State<EntradaCheckBox> {
  bool _value = false;
  bool _valueMexicana = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada'),
        backgroundColor: Colors.black,
      ),
      body: Container(
          child: Column(
        children: <Widget>[
          Text('Comida Brasileira'),
          Checkbox(
            value: _value,
            onChanged: (bool valor) {
              setState(() {
                _value = valor;
              });
            },
          ),
          CheckboxListTile(
              title: Text('Comida Brasileira'),
              subtitle: Text('A melhor comida Brasileira'),
              activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _value,
              onChanged: (bool valor) {
                setState(() {
                  _value = valor;
                });
              }),
          CheckboxListTile(
              title: Text('Comida Mexicana'),
              subtitle: Text('A melhor comida Mexicana'),
              activeColor: Colors.red,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              value: _valueMexicana,
              onChanged: (bool valor) {
                setState(() {
                  _valueMexicana = valor;
                });
              }),
          RaisedButton(
              child: Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {
                setState(() {
                  print("comida brasileira: " +
                      _value.toString() +
                      " comida mexicana: " +
                      _valueMexicana.toString());
                });
              })
        ],
      )),
    );
  }
}
