import 'package:flutter/material.dart';

//Das TUD-Logo und die Uhr sind als Asset aufgerufen und muss dem entsprechend in der pubspec.yaml Datei angegeben werden
// assets:
//  - lib/images/

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
        leading: Padding(
          padding: const EdgeInsets.all(7),
          child: Image.asset("lib/images/tudlogo.png"),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //open drawer
              },
              icon: Icon(Icons.menu, size: MediaQuery.of(context).size.height * 0.05)),
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
                        Image.asset("lib/images/clock.png", height: MediaQuery.of(context).size.height * 0.2),
                        Text(
                          getFormatedDate(),
                          style: normal,
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                    color: bg,
                  ),
                ],
              ),
              SizedBox(
                height: (66 + 30) * 4,
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
                      height: 68,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.23,
                                height: 32,
                                color: (DateTime.now().weekday == DateTime.monday? tudBlue : bg),
                                child: Row(children: [
                                  Icon(
                                    Icons.class_,
                                    color:  (DateTime.now().weekday == DateTime.thursday? Colors.white : tudBlue),
                                  ),
                                  Text("Mo 2. DS\nAPB EOO1",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          color: (DateTime.now().weekday == DateTime.monday? Colors.white : tudBlue), fontSize: 11))
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.23,
                                  height: 32,
                                  color: (DateTime.now().weekday == DateTime.thursday? tudBlue : bg),
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, color: (DateTime.now().weekday == DateTime.thursday? Colors.white : tudBlue)),
                                      Text("Do 09:20",
                                          textAlign: TextAlign.right, style: TextStyle(fontSize: 16, color: (DateTime.now().weekday == DateTime.thursday? Colors.white : tudBlue),))
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.665,
                            height: 68,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Algorithmen und\nDatenstrukturen",
                                      style: normal,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.navigate_next), onPressed: (){}
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      //Zweites der vier Elemente unten
                      height: 68,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.23,
                                height: 32,
                                color: (DateTime.now().weekday == DateTime.monday ? tudBlue : bg),
                                child: Row(children: [
                                  Icon(
                                    Icons.class_,
                                    color: (DateTime.now().weekday == DateTime.monday ? Colors.white : tudBlue),
                                  ),
                                  Text("Mo 15:30",
                                      style: TextStyle(fontSize: 16, color: (DateTime.now().weekday == DateTime.monday ? Colors.white : tudBlue)), textAlign: TextAlign.right)
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.23,
                                  height: 32,
                                  color: (DateTime.now().weekday == DateTime.wednesday ? tudBlue : bg),
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, color: (DateTime.now().weekday == DateTime.wednesday ? Colors.white : tudBlue)),
                                      Text(
                                        "Mi 10:50",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 16, color: (DateTime.now().weekday == DateTime.wednesday ? Colors.white : tudBlue)),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.665,
                            height: 68,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Einführung in die \n Mathematik für Informatik",
                                      style: normal,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.navigate_next), onPressed: (){}
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      //Drittes der vier Elemente unten
                      height: 68,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.23,
                                height: 32,
                                color: (DateTime.now().weekday == DateTime.tuesday ? tudBlue : bg),
                                child: Row(children: [
                                  Icon(
                                    Icons.class_,
                                    color: (DateTime.now().weekday == DateTime.tuesday ? Colors.white : tudBlue),
                                  ),
                                  Text("Di 7:20",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 16, 
                                          color: (DateTime.now().weekday == DateTime.tuesday ? Colors.white : tudBlue)))
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.23,
                                  height: 32,
                                  color: (DateTime.now().weekday == DateTime.tuesday ? tudBlue : bg),
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, color: (DateTime.now().weekday == DateTime.tuesday ? Colors.white : tudBlue)),
                                      Text("Di 09:20",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(fontSize: 16, color: (DateTime.now().weekday == DateTime.tuesday ? Colors.white : tudBlue)),)
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.665,
                            height: 68,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Einführungspraktikum\nRoboLab",
                                      style: normal,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.navigate_next), onPressed: (){}
                                    )
                                  ]),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      //Viertes der vier Elemente unten
                      height: 68,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.23,
                                height: 32,
                                color: (DateTime.now().weekday == DateTime.wednesday ? tudBlue : bg),
                                child: Row(children: [
                                  Icon(
                                    Icons.class_,
                                    color: (DateTime.now().weekday == DateTime.wednesday ? Colors.white : tudBlue),
                                  ),
                                  Text("Mi 12:50",
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                          fontSize: 16, 
                                          color: (DateTime.now().weekday == DateTime.wednesday ? Colors.white : tudBlue)))
                                ]),
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.23,
                                  height: 32,
                                  color: (DateTime.now().weekday == DateTime.monday ? tudBlue : bg),
                                  child: Row(
                                    children: [
                                      Icon(Icons.edit, color: (DateTime.now().weekday == DateTime.monday ? Colors.white : tudBlue)),
                                      Text(
                                        "Mo 09:20",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(fontSize: 16, color: (DateTime.now().weekday == DateTime.monday ? Colors.white : tudBlue)),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                          Container(
                            color: bg,
                            width: MediaQuery.of(context).size.width * 0.665,
                            height: 68,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Einführung in die \n Mathematik für Informatik",
                                      style: normal,
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.navigate_next), onPressed: (){}
                                    )
                                  ]),
                            ),
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
