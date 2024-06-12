import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:three_intrfaces_app_with_api_etc/config/get_it_config.dart';
import 'package:three_intrfaces_app_with_api_etc/model/page_model.dart';
import 'package:three_intrfaces_app_with_api_etc/service/page_service.dart';
import 'package:three_intrfaces_app_with_api_etc/view/pageone.dart';
import 'package:three_intrfaces_app_with_api_etc/view/pagetwo.dart';

void main() {
  inti();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProjectListScreenTwo(),
    );
  }
}
