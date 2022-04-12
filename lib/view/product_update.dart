import 'package:flutter/material.dart';

class UpdateProduct extends StatefulWidget {
  const UpdateProduct({Key? key}) : super(key: key);
  //A classe UpdateProduct terá um estado de página, esse estado será criado e salvo.
  @override
  UpdateProductPageState createState() => UpdateProductPageState();
}

//A classe responsável por realizar a mudança de estado mencionado acima
class UpdateProductPageState extends State<UpdateProduct> {
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
                "Atualizar Produto",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )),
            ],
          )));
}

_body() {}
