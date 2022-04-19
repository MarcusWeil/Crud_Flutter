import 'package:crud_and_dialoguebox/components/show_snackbar.dart';
import 'package:crud_and_dialoguebox/models/product.dart';
import 'package:crud_and_dialoguebox/view/product_create.dart';
import 'package:crud_and_dialoguebox/view/product_update.dart';
import 'package:crud_and_dialoguebox/providers/product_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final HttpService httpService = HttpService();
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: ShowSnackBar.instance.rootScaffoldMessengerKey,
      home: Scaffold(
          appBar: _appBar(),
          body:
                    Column(children: <Widget>[
            Expanded(
              child: Builder(builder: (context) {
                return Observer(builder: (_) {
                  return ListView.builder(
                      itemCount: 5,
                      padding: const EdgeInsets.only(top: 10, bottom: 0),
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10, bottom: 0),
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: const TextSpan(
                                    style: TextStyle(fontSize: 16),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: 'Existem ',
                                          style:
                                              TextStyle(color: Colors.black)),
                                      TextSpan(
                                          text: '5',
                                          style: TextStyle(color: Colors.blue)),
                                      TextSpan(
                                          text: ' produtos cadastrados.\n',
                                          style:
                                              TextStyle(color: Colors.black)),
                                    ],
                                  ),
                                ),
                              ),
                              _card()
                            ],
                          );
                        } else {
                          return _card();
                        }
                      });
                });
              }),
            )
          ])),
      debugShowCheckedModeBanner: false,
    );
    //       FutureBuilder(
    //     future: httpService.getProducts(),
    //     builder:
    //         (BuildContext context, AsyncSnapshot<List<Product>> snapshot) {
    //       if (snapshot.hasData) {
    //         return ListView.builder(
    //           itemBuilder: (context, index) => ListTile(
    //             title: Text(snapshot.data![index].name),
    //           ),
    //         );
    //       } else {
    //         return Center(child: CircularProgressIndicator());
    //       }
    //     },
    //   ),
    // ));
  }

  _appBar() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      title: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              const Expanded(
                  child: Text(
                "Lista de produtos",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )),
              Builder(builder: (context) {
                return IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateProduct()));
                    },
                    icon: const Icon(Icons.add),
                    alignment: Alignment.centerRight,
                    color: const Color.fromARGB(255, 255, 255, 255));
              }),
            ],
          )),
    );
  }

  _card() {
    return Card(
      elevation: 8,
      shadowColor: Colors.grey.withOpacity(0.3),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.dashboard,
                    size: 16,
                    color: Color.fromARGB(255, 6, 74, 129),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        '123',
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.2,
                            color: Color.fromARGB(255, 6, 74, 129)),
                      ),
                    ),
                  ),
                  Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {},
                      child: IconButton(
                        onPressed: () {
                          showDialogBox(context);
                        },
                        icon: const Icon(
                          Icons.delete,
                          color: Color.fromARGB(255, 194, 26, 14),
                        ),
                      ),
                    );
                  })
                ],
              ),
              Row(
                children: const [
                  Icon(
                    Icons.attach_money,
                    size: 16,
                    color: Colors.black,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      ' Preço: ',
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: .2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        "Preço ---",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(fontSize: 15, letterSpacing: .2),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_month_rounded,
                    size: 16,
                    color: Colors.black,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5.0),
                    child: Text(
                      ' Data de adição: ',
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing: .2,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Expanded(
                    child: Text(
                      '04/10/2021',
                      style: TextStyle(fontSize: 15, letterSpacing: .2),
                    ),
                  ),
                  Builder(builder: (context) {
                    return IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => UpdateProduct())));
                        },
                        icon: const Icon(Icons.edit));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialogBox(BuildContext context) {
    AlertDialog dialogue = AlertDialog(
      titlePadding: const EdgeInsets.all(0),
      title: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        child: const Padding(
          padding: EdgeInsets.all(15),
          child: Center(
            child: Text(
              "Excluir item",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      content: Expanded(
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 3.5,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(0),
                child: Icon(
                  Icons.warning_rounded,
                  color: Color.fromRGBO(173, 42, 42, 1),
                  size: 60,
                ),
              ),
              Observer(builder: (_) {
                return const Text(
                  "Tem certeza que deseja deletar este item?",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                );
              }),
              Expanded(child: Container()),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true)
                                .pop('dialog');
                            ShowSnackBar.instance
                                .showSnackBarSucess('Excluído com sucesso');
                          },
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.fromLTRB(35, 10, 35, 10),
                              primary: const Color.fromRGBO(173, 42, 42, 1)),
                          child: const Text("Sim",
                              style: TextStyle(fontSize: 18.0)))),
                  Center(
                      child: TextButton(
                          onPressed: () {
                            Navigator.of(context, rootNavigator: true)
                                .pop('dialog');
                          },
                          child: const Text(
                            "Não",
                            style:
                                TextStyle(fontSize: 18.0, color: Colors.black),
                          ))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return dialogue;
      },
    );
  }
}
