import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mi_card/borderUtil.dart';
import 'package:mi_card/bigIconWidge.dart';
import 'package:mi_card/imageWidget.dart';
import 'package:mi_card/personalDetails.dart';

void main() {
  runApp(PersonalCardApp());
}

class PersonalCardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var card = InfoCardWidget();
    card.addRow(CardRow("firstname", "Simon", icon: Icons.person));
    card.addRow(CardRow("lastname", "Scheurer"));
    card.addRow(CardRow("mobile", "+41 78 853 3823", icon: Icons.phone));
    card.addRow(CardRow("home", "+41 44 333 8855", icon: Icons.phone));
    card.addRow(
        CardRow("e-mail (home)", "schueri@gmail.com", icon: Icons.email));
    card.addRow(
        CardRow("e-mail (work)", "simon@contem.club", icon: Icons.email));
    card.addRow(CardRow("birthday", "10. July 1973", icon: Icons.date_range));
    card.addRow(CardRow("linkedin", "https://linkedin.com/in/simonscheurer",
        icon: Icons.arrow_right));

    return MaterialApp(
      home: SafeArea(
        child: Container(
          color: Colors.red,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    BorderUtil.addBorder(
                      BigIconWidget(CupertinoIcons.arrow_left),
                    ),
                    // Without the "Expanded", the image will be too big.
                    // I.e. there is no constraint. The Expanded though
                    // "informs" the image to consume all 'available'
                    // width which leads the image to resize.
                    ImageWidget('portrait-1.jpg'),
                    BorderUtil.addBorder(
                      BigIconWidget(CupertinoIcons.arrow_right),
                    ),
                  ],
                ),
                card,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
