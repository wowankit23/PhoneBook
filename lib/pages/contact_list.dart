import 'package:contact_silverlist/model/NameModel.dart';
import 'package:contact_silverlist/pages/detail_page.dart';
import 'package:contact_silverlist/pages/name_state.dart';
import 'package:contact_silverlist/widget/group_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../helper/Constants.dart';

class ContactListPage extends StatefulWidget {
  const ContactListPage({Key key}) : super(key: key);

  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<NameState>(
      create: (_) => NameState(),
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            contacts,
            style: TextStyle(fontSize: 22),
          ),
        ),
        body: Consumer<NameState>(
          builder: (BuildContext context, value, _) => GroupView<NameModel>(
            elements: value.displayName,
            titleAdapter: (element) => element.name,
            header: _buildHeaderWidget(),

            onItemClicked: (element) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailPage(record: element)),
              );
              print(element);
            },
          ),
        ),
      ),
    );
  }


  _buildHeaderWidget() {
    return Container(
        padding: EdgeInsets.all(8),
        child: Center(
            child: Text(
              "PHONE BOOK",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )));
  }


}