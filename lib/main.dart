import 'package:contact_silverlist/pages/contact_list.dart';
import 'package:contact_silverlist/pages/detail_page.dart';
import 'package:flutter/material.dart';

import 'helper/Constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    contactPageTag: (context) => ContactListPage(),
    contactPageDetailTag: (context) => DetailPage(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: appTitle,
        theme: new ThemeData(
          primaryColor: appDarkGreyColor,
        ),
        home: ContactListPage(),
        routes: routes
    );
  }


}
