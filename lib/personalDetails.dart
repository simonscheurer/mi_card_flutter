import 'package:flutter/material.dart';

class CardRow {
  String name, value;
  IconData icon;

  CardRow(String name, String value, {IconData icon}) {
    this.name = name;
    this.value = value;
    this.icon = icon;
  }
}

class InfoCardWidget extends StatelessWidget {
  var _content = <CardRow>[];

  void addRow(CardRow row) {
    _content.add(row);
  }

  List<TableRow> _buildChildren() {
    var result = <TableRow>[];
    for (var row in _content) {
      result.add(_buildRow(row));
    }
    return result;
  }

  TableRow _buildRow(row) {
    return TableRow(
      children: [
        /*Checkbox(
        value: false,
        onChanged: null,
      ),*/
        row.icon == null
            ? Spacer()
            : Icon(
                row.icon,
                size: 16.0,
                color: Colors.black38,
              ),
        Text(
          row.name,
          style: TextStyle(color: Colors.black38),
        ),
        SizedBox(
          child: Text(row.value),
          height: 28.0,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      margin: EdgeInsets.all(10),
      elevation: 6.0,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Table(
          children: _buildChildren(),
          columnWidths: {
            // 0: FlexColumnWidth(1),
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(3),
            2: FlexColumnWidth(4),
          },
        ),
      ),
    );
  }
}
