import 'package:flutter/material.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({Key? key}) : super(key: key);
  //A classe CreateProduct terá um estado de página, esse estado será atualizado conforme houverem os eventos e será salvo.
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
      backgroundColor: const Color.fromARGB(255, 12, 116, 202),
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

_body() {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.all(12),
      child: Stack(children: [
        Column(
          children: [
            const Text("Everything is fine!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              children: const [
                Expanded(
                  child: Text(
                      "There are no shipments with suspicious activity.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20.0)),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Image.asset("assets/create-product.png",
                width: 200.0, height: 200.0),
            const SizedBox(
              height: 20.0,
            ),
            const TextField(
              onChanged: (null),
              decoration: InputDecoration(
                  label: Text('Nome do Produto'),
                  suffixIcon: Icon(
                    Icons.dashboard,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(height: 15),
            const TextField(
              onChanged: (null),
              decoration: InputDecoration(
                  label: Text('Preço do Produto'),
                  suffixIcon: Icon(
                    Icons.attach_money,
                    color: Colors.black,
                  )),
            ),
            const SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 12, 116, 202),
                        elevation: 5),
                    child: const Text(
                      'Adicionar',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      primary: const Color.fromARGB(255, 255, 255, 255),
                      elevation: 5),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                )
              ],
            ),
          ],
        )
      ]),
    ),
  );
}
