import 'package:flutter/material.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({Key? key}) : super(key: key);
  //A classe CreateProduct terá um estado de página, esse estado será criado e salvo.
  @override
  CreateProductPageState createState() => CreateProductPageState();
}

//A classe responsável por realizar a mudança de estado mencionado acima
class CreateProductPageState extends State<CreateProduct> {
  @override
  Widget build(BuildContext context) {
    //Componentes da tela sendo chamados.
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }
}

_appBar() {
  return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      title: Align(
          alignment: Alignment.center,
          child: Row(
            children: const [
              Expanded(
                  child: Text(
                "Adicionar Produto",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )),
            ],
          )));
}

_body() {}
