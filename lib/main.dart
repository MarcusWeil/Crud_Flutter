import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: _appBar(),
          body: Column(children: <Widget>[Expanded(child: Container(
              child: Observer(builder: (_) {
                return ListView.builder(
                    itemCount: 5,
                    padding: const EdgeInsets.all(8),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 0) {
                        return Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 16, bottom: 12),
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: const TextSpan(
                                  style: TextStyle(
                                      fontSize: 16),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: 'There are a total of ',
                                        style: TextStyle(color: Colors.black)),
                                    TextSpan(
                                        text: '5',
                                        style: TextStyle(
                                            color: Colors.blue)),
                                     TextSpan(
                                        text: ' items.\n',
                                        style: TextStyle(color: Colors.black)),
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
              }),
            ),)])),
          debugShowCheckedModeBanner: false,
    );
  }

  _appBar() {
    return AppBar(
      backgroundColor: const Color(0xFFC13854),
      title: Align(
          alignment: Alignment.center,
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add),
                  alignment: Alignment.centerRight,
                  color: const Color(0xFFC13854)),
              const Expanded(
                  child: Text(
                "ItemView and DialogueBox",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              )),
              const Icon(
                Icons.flag,
                color: Color(0xFFC13854),
              )
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
          border: Border(right: BorderSide(width: 2, color: Colors.redAccent)),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.circle,
                    size: 12,
                    color: Colors.red,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Título do card',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                            fontSize: 16,
                            letterSpacing: 0.2,
                            color: Colors.red),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.mail_outline,
                      size: 16,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        ' Description: ',
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
                          'Descrição do Card',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              TextStyle(fontSize: 15, letterSpacing: .2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.badge_outlined,
                      size: 16,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        ' ID: ',
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
                          'Identidade',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style:
                              TextStyle(fontSize: 15, letterSpacing: .2),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Row(
                  children: const [
                    Icon(
                      Icons.calendar_today_sharp,
                      size: 16,
                      color: Colors.black,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text(
                        ' Data de criação: ',
                        style: TextStyle(
                            fontSize: 15,
                            letterSpacing: .2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Text('04/10/2021',
                        style: TextStyle(fontSize: 15, letterSpacing: .2),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
