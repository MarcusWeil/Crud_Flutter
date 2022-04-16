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
      backgroundColor: const Color.fromARGB(255, 194, 14, 8),
      automaticallyImplyLeading: false,
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

_body() {
  return SingleChildScrollView(
    child: Container(
      padding: const EdgeInsets.all(12),
      child: Stack(children: [
        Column(
          children: [
            const SizedBox(height: 15),
            Image.asset("assets/images/update-product.png",
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
            const SizedBox(height: 40),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 194, 14, 8),
                        elevation: 5),
                    child: const Text(
                      'Atualizar',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
                Builder(builder: (context) {
                  return ElevatedButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).pop('dialog');
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 255, 255),
                        elevation: 5),
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  );
                })
              ],
            ),
          ],
        )
      ]),
    ),
  );
}

