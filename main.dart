import 'package:flutter/material.dart';

void main() {
  runApp(const UniTagApp());
}

class UniTagApp extends StatelessWidget {
  const UniTagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const Color tudBlue = Color.fromARGB(255, 0, 0x25, 0x57);
  static const Color bg = Color.fromARGB(255, 236, 236, 236);
  static const TextStyle heading =
      TextStyle(fontWeight: FontWeight.bold, color: tudBlue, fontSize: 20);
  static const TextStyle normal = TextStyle(color: tudBlue, fontSize: 16);
  static const TextStyle invert = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: tudBlue,
        foregroundColor: Colors.white,
        title: Center(child: Text("Mein UNI-Tag")),
        leading: Icon(Icons.abc),
        actions: [
          IconButton(
              onPressed: () {
                //open drawer
              },
              icon: Icon(Icons.menu)),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Meine Daten", style: heading),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Matr.-Nr.: 1234567", style: normal),
                          Text("S-Nr.: 1234567", style: normal)
                        ],
                      )
                    ],
                  ),
                  Container(
                    child: Column(
                      children: [
                        Icon(Icons.circle_sharp),
                        Text(
                          getFormatedDate(),
                          style: normal,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    color: bg,
                  ), //Uhr
                ],
              ),
              SizedBox(
                height: (66 + 15) * 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Meine Kurse",
                      style: heading,
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      //Erstes der vier Elemente unten
                      height: 66,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.21,
                                height: 32,
                                color: tudBlue,
                                child: Row(children: [
                                  Icon(
                                    Icons.cancel_presentation,
                                    color: Colors.white,
                                  ),
                                  Text("Mo 2. DS\nAPB EOO1",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 11))
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.21,
                                  height: 32,
                                  color: bg,
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit),
                                      Text("Do 09:20",
                                          textAlign: TextAlign.right)
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.685,
                            height: 66,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Algorithmen und\nDatenstrukturen",
                                    style: normal,
                                  ),
                                  GestureDetector(
                                    child: Icon(Icons.navigate_next),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      //Zweites der vier Elemente unten
                      height: 66,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.21,
                                height: 32,
                                color: tudBlue,
                                child: Row(children: [
                                  Icon(
                                    Icons.cancel_presentation,
                                    color: Colors.white,
                                  ),
                                  Text("Mo 15:30",
                                      style: invert, textAlign: TextAlign.right)
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.21,
                                  height: 32,
                                  color: bg,
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit),
                                      Text(
                                        "Mi 10:50",
                                        textAlign: TextAlign.right,
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.685,
                            height: 66,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Einführung in die \n Mathematik für Informatik",
                                    style: normal,
                                  ),
                                  GestureDetector(
                                    child: Icon(Icons.navigate_next),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      //Drittes der vier Elemente unten
                      height: 66,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.21,
                                height: 32,
                                color: bg,
                                child: Row(children: [
                                  Icon(
                                    Icons.cancel_presentation,
                                    color: tudBlue,
                                  ),
                                  Text("Di 7:20",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: tudBlue, fontSize: 11))
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.21,
                                  height: 32,
                                  color: bg,
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit),
                                      Text("Di 09:20",
                                          textAlign: TextAlign.right)
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.685,
                            height: 66,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Einführungspraktikum\nRoboLab",
                                    style: normal,
                                  ),
                                  GestureDetector(
                                    child: Icon(Icons.navigate_next),
                                  )
                                ]),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      //Viertes der vier Elemente unten
                      height: 66,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.21,
                                height: 32,
                                color: bg,
                                child: Row(children: [
                                  Icon(
                                    Icons.cancel_presentation,
                                    color: tudBlue,
                                  ),
                                  Text("Mi 12:50",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: tudBlue, fontSize: 11))
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.21,
                                  height: 32,
                                  color: tudBlue,
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, color: Colors.white),
                                      Text(
                                        "Mo 09:20",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(color: Colors.white),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.685,
                            height: 66,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Einführung in die \n Mathematik für Informatik",
                                    style: normal,
                                  ),
                                  GestureDetector(
                                    child: Icon(Icons.navigate_next),
                                  )
                                ]),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String getFormatedDate() {
    String date = "";

    switch (DateTime.now().weekday) {
      case DateTime.monday:
        date += "Mo";
        break;
      case DateTime.tuesday:
        date += "Di";
        break;
      case DateTime.wednesday:
        date += "Mi";
        break;
      case DateTime.thursday:
        date += "Do";
        break;
      case DateTime.friday:
        date += "Fr";
        break;
      case DateTime.saturday:
        date += "Sa";
        break;
      default:
        date += "So";
        break;
    }

    date +=
        " | ${DateTime.now().day >= 10 ? DateTime.now().day.toString() : "0" + DateTime.now().day.toString()}.";
    date +=
        "${DateTime.now().month >= 10 ? DateTime.now().month.toString() : "0" + DateTime.now().month.toString()}.${DateTime.now().year}";

    return date;
  }
}
