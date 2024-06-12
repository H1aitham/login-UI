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
  String _phone = '';
  final websiteUri = Uri.parse('https://heyflutter.com');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgr,
      appBar: AppBar(
        backgroundColor: backgr,
        title: const Text('Project List Screen Three'),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
                style: TextStyle(fontSize: 40, color: textWh),
                'ALL projects ${core.get<SharedPreferences>().getString('EnterText')}'),
          ),


          
          TextField(
            onChanged: (text) => _phone = text,
            decoration: const InputDecoration(hintText: 'enter phone'),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () async {
                final url = Uri(scheme: 'tel', path: _phone);
                if (await canLaunchUrl(url)) {
                  launchUrl(url);
                }
              },
              child: Text(
                'Make phone',
                style: TextStyle(color: textBl),
              )),
          Link(
            uri: websiteUri,
            target: LinkTarget.defaultTarget,
            builder: (context, openLink) => TextButton(
                onPressed: openLink, child: Text(websiteUri.toString())),
          ),
          ElevatedButton(
              onPressed: () => setState(() {
                    launchUrl(websiteUri, mode: LaunchMode.externalApplication);
                  }),
              child: Text('Lunch in browser', style: TextStyle(color: textBl))),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              onPressed: () {
                launchUrl(websiteUri, mode: LaunchMode.inAppWebView);
              },
              child: Text('Launch in app', style: TextStyle(color: textBl)))
        ],
      ),
    );
  }
}
