import 'package:crudapi/service/get_storage_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.logout),
        onPressed: () async {
          await StorageService.instance.delete('token');
          Navigator.pushNamedAndRemoveUntil(context, "/auth", (route) => false);
        },
      ),
    );
  }
}
