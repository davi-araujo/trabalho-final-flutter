import 'package:flutter/material.dart';
import 'Pessoas_de_rua.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _informacao = "Digite os dados e clique em cadastrar.\n Os seus dados serão direcionados para o abrigo mais próximo!\nCaso tenha respondido sim para interesse em uma vaga de emprego\nencaminharemos você para as vagas disponíveis.";
  final _nomeController = TextEditingController();
  final _idadeController = TextEditingController();
  final _sexoController = TextEditingController();
  final _cadUnicoController = TextEditingController();
  final _filiacaoController = TextEditingController();
  final _empregoController = TextEditingController();
  final _RGController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  void _cadastrar() {
    final pessoas_rua = Pessoas_de_rua(
        _nomeController.text,
        int.parse(_idadeController.text),
        _sexoController.text,
        _cadUnicoController.text,
        _filiacaoController.text,
        _empregoController.text,
        double.parse(_RGController.text));
    setState(() {
      _informacao = pessoas_rua.toString();
    });
  }

  void _limparFormulario() {
    _nomeController.text = "";
    _idadeController.text = "";
    _sexoController.text = "";
    _cadUnicoController.text = "";
    _filiacaoController.text = "";
    _empregoController.text = "";
    _RGController.text = "";

    setState(() {
      _informacao = "Digite os dados e clique em cadastrar.\n Os seus dados serão direcionados para o abrigo mais próximo!\nCaso tenha respondido 'sim' para interesse em uma vaga de emprego\nencaminharemos você para as vagas disponíveis.";
      _globalKey = GlobalKey<FormState>();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ficha de Cadastro para Pessoas em Situação de Rua"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _limparFormulario();
            },
          ),
        ],
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: _globalKey,
            child: Column(
              children: [
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                  },
                  controller: _nomeController,
                  decoration: InputDecoration(
                    labelText: "Nome",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                    try{
                      int.parse(value);
                    }catch(e){
                      return "Valor inválido";
                    }
                  },
                  controller: _idadeController,
                  decoration: InputDecoration(
                    labelText: "Idade",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                  },
                  controller: _sexoController,
                  decoration: InputDecoration(
                    labelText: "Sexo",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                  },
                  controller: _cadUnicoController,
                  decoration: InputDecoration(
                    labelText: "Possui Cadastro Único?",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                  },
                  controller: _filiacaoController,
                  decoration: InputDecoration(
                    labelText: "Filiação",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                  },
                  controller: _empregoController,
                  decoration: InputDecoration(
                    labelText: "Possui interesse em uma vaga de emprego?",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                TextFormField(
                  // ignore: missing_return
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "O campo não pode ficar em branco";
                    }
                    try{
                      double.parse(value);
                    }catch(e){
                      return "Valor inválido";
                    }
                  },
                  controller: _RGController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "RG",
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0)),
                ElevatedButton(
                  onPressed: () {
                    if (_globalKey.currentState!.validate()) {
                      _cadastrar();
                    }
                  },
                  child: Text("Cadastrar"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueGrey,
                    textStyle: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Text(
                  _informacao,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}