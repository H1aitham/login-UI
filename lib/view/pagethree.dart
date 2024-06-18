import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:three_intrfaces_app_with_api_etc/config/get_it_config.dart';
import 'package:three_intrfaces_app_with_api_etc/res/app_color.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectListScreenTtree extends StatefulWidget {
  const ProjectListScreenTtree({super.key});

  @override
  State<ProjectListScreenTtree> createState() => _ProjectListScreenTtreeState();
}

class _ProjectListScreenTtreeState extends State<ProjectListScreenTtree> {
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgr,
      appBar: AppBar(
        backgroundColor: backgr,
        title: const Text('Project List Screen Three'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
          ),
          Center(
            child: Text(
                style: TextStyle(fontSize: 40, color: textWh),
                'Email : ${core.get<SharedPreferences>().getString('EnterText')}'),
          ),
          Center(
            child: Text(
                style: TextStyle(fontSize: 40, color: textWh),
                'Password : ${core.get<SharedPreferences>().getString('password')}'),
          ),
        ],
      ),
    );
  }
}
