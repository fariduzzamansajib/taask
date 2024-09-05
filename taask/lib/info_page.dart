import 'package:flutter/material.dart';

class InfoPage extends StatefulWidget {
  final String title;
  const InfoPage({super.key, required this.title});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

Table buildOutputTable(List<List<String?>> tableData) {
  List<TableRow> rows = [];
  for (var row in tableData) {
    List<Widget> cells = row.map((cell) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          cell ?? "", // ekhane ghor faka thakle kichui dekhabe na
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 12),
        ),
      );
    }).toList();

    rows.add(TableRow(children: cells));
  }

  return Table(
    // bordar properti chara
    children: rows,
  );
}

final List<dynamic> input1 = [
  {
    "0": {"id": 1, "title": "Gingerbread"},
    "1": {"id": 2, "title": "Jellybean"},
    "3": {"id": 3, "title": "KitKat"}
  },
  [
    {"id": 4, "title": "Lollipop"},
    {"id": 5, "title": "Pie"},
    {"id": 6, "title": "Oreo"},
    {"id": 7, "title": "Nougat"}
  ]
];
List<List<String?>> parseJson(dynamic jsonData) {
  List<List<String?>> parsedData = [];

  if (jsonData is List) {
    for (var item in jsonData) {
      if (item is Map) {
        // Map pele titel dhore prodorshon korbe
        List<String?> row = List.filled(4, null); // sorboscho 4 dorchi,
        item.forEach((key, value) {
          int index = int.tryParse(key) ?? -1;
          if (index != -1 && index < 4) {
            row[index] = value['title'];
          }
        });
        parsedData.add(row);
      } else if (item is List) {
        // jodi list pele id dhore prdorshon korbe
        List<String?> row = List.filled(4, null);
        for (int i = 0; i < item.length && i < 4; i++) {
          row[i] = item[i]['title'];
        }
        parsedData.add(row);
      }
    }
  }
  return parsedData;
}

class _InfoPageState extends State<InfoPage> {
  List<List<String?>> tableData1 = parseJson(input1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Column(
        children: [
          buildOutputTable(tableData1),
        ],
      ),
    );
  }
}
