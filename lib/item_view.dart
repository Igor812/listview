import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  final String name;
  final String mobile;

  ItemView(this.name, this.mobile);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                widgetName(name),
                widgetMobile(mobile),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

widgetName(String name) => Container(
      margin: const EdgeInsetsDirectional.only(top: 10.0),
      child: Text(
        name,
        style: const TextStyle(
            fontSize: 17.0,
            color: Colors.black,
            fontWeight: FontWeight.bold),
      ),
    );

widgetMobile(String mobile) => Text(
      "Телефон - " + mobile,
      style: const TextStyle(fontSize: 14.0, color: Colors.grey),
    );
