import 'package:crudapi/routes/routes.dart';
import 'package:crudapi/screens/auth/view/auth_page.dart';
import 'package:crudapi/screens/home/view/home_page.dart';
import 'package:crudapi/service/get_storage_service.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
        future: a(),
        builder: (context, AsyncSnapshot snap) {
          if (!snap.hasData) {
            return CircularProgressIndicator.adaptive();
          } else {
            return snap.data;
          }
        },
      )
    );
  }

  Future<Widget> a() async {
    if (await StorageService.instance.reads('token') != "null") {
      return HomePage();
    } else {
      return AuthPage();
    }
  }
}
