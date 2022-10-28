import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite Um valor"
              ),
              // enabled: false,
              // maxLength: 2,
              // maxLengthEnforced: false,
              // style: TextStyle(
              //   fontSize: 30,
              //   color: Colors.green
              // ),
              // obscureText: true,
              // onChanged: (String e){
              //   print("Valor digitado: $e");
              // },
              onSubmitted: (String e){
                print("Valor digitado: $e");
              },
              controller: _textEditingController,

            ),
          ),
          RaisedButton(
            child: Text("salvar"),
            color: Colors.lightBlue,
            onPressed: () {
              print("Valor digitado: " + _textEditingController.text);
            },
          )
        ],
      ) 
    );
  }
}
