import 'package:flutter/material.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:xlo_mobx/screens/base/base_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initializeParse();
  runApp(MyApp());
}

Future<void> initializeParse() async {
  await Parse().initialize(
      '4BmVP6xGPeJKEW0zAfJfsDLXAL9oPTv54dEXBKbk',
      'https://parseapi.back4app.com/',
      clientKey: 'gfadhx4jinAQc6VfqMjCfHT5Qjyn8sPJiN1vXHRZ',
      autoSendSessionId: true,
      debug: true
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XLO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BaseScreen(),
    );
  }
}
