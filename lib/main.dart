import 'package:flutter/material.dart';
import 'package:formulario_produto/models/produto.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final TextEditingController _controladorNome = TextEditingController();
  final TextEditingController _controladorQuantidade = TextEditingController();
  final TextEditingController _controladorValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cadastrando Produto'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorNome,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorQuantidade,
                decoration: const InputDecoration(
                  labelText: 'Quantidade',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextField(
                controller: _controladorValor,
                decoration: const InputDecoration(
                  labelText: 'Valor',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: ElevatedButton(
                child: const Text("Cadastrar"),
                onPressed: () {
                  final String nome = _controladorNome.text;
                  final int? quantidade =
                      int.tryParse(_controladorQuantidade.text);
                  final double? valor = double.tryParse(_controladorValor.text);

                  if (quantidade != null && valor != null) {
                    final Produto produtoNovo = Produto(nome, quantidade, valor);
                    debugPrint(produtoNovo.toString());
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
