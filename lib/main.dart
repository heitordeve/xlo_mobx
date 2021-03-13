import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

void main() async{
  runApp(MyApp());
  
   await Parse().initialize(
      '4BmVP6xGPeJKEW0zAfJfsDLXAL9oPTv54dEXBKbk',
      'https://parseapi.back4app.com/',
    clientKey: 'gfadhx4jinAQc6VfqMjCfHT5Qjyn8sPJiN1vXHRZ',
    autoSendSessionId: true,
    debug: true
  );

   final category = ParseObject('Categories')
    ..set('Title', 'Shorts')
    ..set('Position', 2);

   final response = await category.save();

   print(response.success);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
    );
  }
}
