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
  static const TextStyle invert = TextStyle(color: Colors.white, fontSize: 16);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tudBlue,
        foregroundColor: Colors.white,
        title: Center(child: Text("Mein UNI-Tag")),
        leading: Icon(Icons.abc),
        actions: [
          DropdownButton(
            iconDisabledColor: Colors.white,
            icon: const Icon(Icons.menu),
            items: [DropdownMenuItem(child: Text(""))],
            onChanged: (object) {},
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(5, 20, 5, 5),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              Column(
                children: [
                  Text(
                    "Meine Kurse",
                    style: heading,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            color: tudBlue,
                            child: Row(children: [
                              Icon(Icons.cancel_presentation),
                              Text("Mo 2. DS\nAPB EOO1", style: invert)
                            ]),
                          ),
                          Container(
                              color: bg,
                              child: Row(
                                children: [Icon(Icons.edit), Text("Do 09:20")],
                              )),
                        ],
                      ),
                      Container(
                        color: bg,
                        child: Row(children: [
                          Text(
                            "Einführung in die \n Mathematik für Informatik",
                            style: normal,
                          ),
                          GestureDetector(
                            child: Icon(Icons.arrow_right),
                          )
                        ]),
                      )
                    ],
                  )
                ],
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
