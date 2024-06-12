import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:three_intrfaces_app_with_api_etc/config/get_it_config.dart';
import 'package:three_intrfaces_app_with_api_etc/res/app_color.dart';
import 'package:three_intrfaces_app_with_api_etc/view/pageone.dart';

TextEditingController EnterText = TextEditingController();
TextEditingController password = TextEditingController();
bool _rememberMe = false;

class ProjectListScreenTwo extends StatefulWidget {
  const ProjectListScreenTwo({super.key});

  @override
  State<ProjectListScreenTwo> createState() => _ProjectListScreenTwoState();
}

class _ProjectListScreenTwoState extends State<ProjectListScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgr,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 500,
            child: Container(
              width: 288,
              height: 360,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 38,
                    backgroundImage: AssetImage(
                        'assets/images/Group 2.png'), // replace with your avatar asset
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: EnterText,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      labelText: 'Email',
                      hintText: 'Example@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: password,
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                  const SizedBox(height: 34),
                  Row(
                    children: [
                      Checkbox(
                        value: _rememberMe,
                        onChanged: (value) {
                          setState(() {
                            _rememberMe = value!;
                          });
                        },
                      ),
                      const Text('Remember me'),
                    ],
                  ),
                  const SizedBox(height: 12),
                  InkWell(
                    onTap: () {
                      core
                          .get<SharedPreferences>()
                          .setString('EnterText', EnterText.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectListScreen()));
                    },
                    child: Container(
                      width: 283,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xffFFEACD),
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                            color: textBl,
                            fontWeight: FontWeight.w600,
                            fontSize: 18),
                      )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      // backgroundColor: backgr,
      // body: Container(
      //   width: double.maxFinite,
      //   child: Container(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: [
      //         const SizedBox(height: 200),
      //         Container(
      //           width: 300,
      //           child: TextField(
      //             controller: EnterText,
      //             onChanged: (value) {},
      //             decoration: InputDecoration(
      //               prefixIcon: Icon(
      //                 Icons.email,
      //                 color: textBl,
      //               ),
      //               hintText: "Enter Text",
      //               hintStyle: TextStyle(color: textWh, fontSize: 15),
      //               border: const OutlineInputBorder(
      //                 borderRadius: BorderRadius.all(Radius.circular(
      //                   30,
      //                 )),
      //               ),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 20),
      //         Container(
      //           width: 300,
      //           child: TextField(
      //             controller: password,
      //             onChanged: (value) {},
      //             decoration: InputDecoration(
      //               prefixIcon: Icon(
      //                 Icons.lock_outline,
      //                 color: textBl,
      //               ),
      //               hintText: "Password",
      //               hintStyle: TextStyle(color: textWh, fontSize: 15),
      //               border: const OutlineInputBorder(
      //                 borderRadius: BorderRadius.all(Radius.circular(
      //                   30,
      //                 )),
      //               ),
      //             ),
      //             obscureText: true,
      //           ),
      //         ),
      //         InkWell(
      //           onTap: () {
      //             core
      //                 .get<SharedPreferences>()
      //                 .setString('EnterText', EnterText.text);
      //             Navigator.push(
      //                 context,
      //                 MaterialPageRoute(
      //                     builder: (context) => ProjectListScreen()));
      //           },
      //           child: Padding(
      //             padding: const EdgeInsets.all(30),
      //             child: Container(
      //               width: 300,
      //               height: 50,
      //               decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(30),
      //                   color: textWh),
      //               child: Center(
      //                   child: Text(
      //                 'REGISTRATION',
      //                 style: TextStyle(
      //                     color: textBl,
      //                     fontWeight: FontWeight.w600,
      //                     fontSize: 18),
      //               )),
      //             ),
      //           ),
      //         ),
      //         const SizedBox(height: 10),
      //       ],
      //     ),
      //   ),
      // )
    );
  }
}
