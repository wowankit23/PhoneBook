import 'package:contact_silverlist/model/NameModel.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final NameModel record;
  DetailPage({this.record});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(record.name),
        ),
        body: new ListView(
            children: <Widget>[
              Hero(
                tag: "avatar_" + record.name,
                child: new Image.network(
"https://image.flaticon.com/icons/png/512/16/16363.png"                ),
              ),
              GestureDetector(
                  onTap: () {
                  },
                  child: new Container(
                    padding: const EdgeInsets.all(32.0),
                    child: new Row(
                      children: [
                        // First child in the Row for the name and the
                        new Expanded(
                          // Name and Address are in the same column
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Code to create the view for name.
                              new Container(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: new Text(
                                  "Name: " + record.name,
                                  style: new TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              // Code to create the view for address.
                              new Text(
                                "Address: " ,
                                style: new TextStyle(
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Icon to indicate the phone number.
                        new Icon(
                          Icons.phone,
                          color: Colors.red[500],
                        ),
                        new Text(' ${record.number}'),
                      ],
                    ),
                  )
              ),
            ]
        )
    );
  }
}