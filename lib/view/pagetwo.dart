import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:three_intrfaces_app_with_api_etc/config/get_it_config.dart';
import 'package:three_intrfaces_app_with_api_etc/res/app_color.dart';
import 'package:three_intrfaces_app_with_api_etc/res/app_style.dart';
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
      body: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Stack(
          children: [
            Container(
              color: backgr,
              width: double.maxFinite,
              height: double.maxFinite,
            ),
            Positioned(
              top: 189,
              left: 36,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: textgr,
                ),
                width: 288,
                height: 360,
              ),
            ),
            Positioned(
              top: 104,
              left: 110,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/Group 2.png')),
                ),
                width: 140,
                height: 140,
              ),
            ),
            Positioned(
              top: 276,
              left: 76,
              child: Container(
                child: Text(
                  'Email',
                  style: primaryTextStyle,
                ),
              ),
            ),
            Positioned(
              top: 302,
              left: 67,
              child: Container(
                  width: 226,
                  height: 43,
                  child: TextField(
                    controller: EnterText,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                      fillColor: textCy,
                      filled: true,
                      hintText: 'Example@gmail.com',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  )),
            ),
            Positioned(
              top: 379,
              left: 76,
              child: Container(
                child: Text(
                  'Password',
                  style: primaryTextStyle,
                ),
              ),
            ),
            Positioned(
                top: 405,
                left: 67,
                child: Container(
                  width: 226,
                  height: 43,
                  child: TextField(
                    controller: password,
                    onChanged: (value) {},
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: textCy,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: const Icon(Icons.visibility_off),
                    ),
                  ),
                )),
            Positioned(
              top: 504,
              left: 108,
              child: Container(
                child: Text(
                  'Remember me',
                  style: primaryTextStyle,
                ),
              ),
            ),
            Positioned(
              top: 498,
              left: 73,
              child: Container(
                child: Checkbox(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
              ),
            ),
            Positioned(
              top: 645,
              left: 39,
              child: Container(
                child: InkWell(
                  onTap: () {
                    core
                        .get<SharedPreferences>()
                        .setString('EnterText', EnterText.text);
                    core
                        .get<SharedPreferences>()
                        .setString('password', password.text);
                    if (EnterText.text == 'haitham@gmail.com' &&
                        password.text == '123') {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        showCloseIcon: true,
                        duration: const Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                        content: Text(
                          "Success",
                          style: primaryTextStyle,
                        ),
                        backgroundColor: textCy,
                      ));
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectListScreen()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        showCloseIcon: true,
                        duration: Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                        content: Text("The pass is incorrect"),
                        backgroundColor: Colors.red,
                      ));
                    }
                  },
                  child: Container(
                    width: 283,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color(0xffFFEACD),
                    ),
                    child:
                        Center(child: Text('Login', style: secondaryTextStyle)),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 735,
              left: 58,
              child: Container(
                child: Text(
                  'Don’t have an account ? ',
                  style: thirdTextStyle,
                ),
              ),
            ),
            Positioned(
              top: 735,
              left: 240,
              child: Container(
                child: Text(
                  ' Sign Up ',
                  style: forthTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
      // body: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.all(16.0),
      //     child: Container(
      //       height: 500,
      //       child: Container(
      //         width: 288,
      //         height: 360,
      //         padding: const EdgeInsets.all(16.0),
      //         decoration: BoxDecoration(
      //           color: Colors.grey[300],
      //           borderRadius: BorderRadius.circular(16.0),
      //         ),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             const CircleAvatar(
      //               radius: 38,
      //               backgroundImage: AssetImage(
      //                   'assets/images/Group 2.png'), // replace with your avatar asset
      //             ),
      //             const SizedBox(height: 16),
      //             TextField(
      //               controller: EnterText,
      //               onChanged: (value) {},
      //               decoration: InputDecoration(
      //                 labelText: 'Email',
      //                 hintText: 'Example@gmail.com',
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(8.0),
      //                 ),
      //               ),
      //             ),
      //             const SizedBox(height: 16),
      //             TextField(
      //               controller: password,
      //               onChanged: (value) {},
      //               obscureText: true,
      //               decoration: InputDecoration(
      //                 labelText: 'Password',
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.circular(8.0),
      //                 ),
      //                 suffixIcon: const Icon(Icons.visibility_off),
      //               ),
      //             ),
      //             const SizedBox(height: 34),
      //             Row(
      //               children: [
      //                 Checkbox(
      //                   value: _rememberMe,
      //                   onChanged: (value) {
      //                     setState(() {
      //                       _rememberMe = value!;
      //                     });
      //                   },
      //                 ),
      //                 const Text('Remember me'),
      //               ],
      //             ),
      //             const SizedBox(height: 12),
      //             InkWell(
      //               onTap: () {
      //                 core
      //                     .get<SharedPreferences>()
      //                     .setString('EnterText', EnterText.text);
      //                 Navigator.push(
      //                     context,
      //                     MaterialPageRoute(
      //                         builder: (context) => ProjectListScreen()));
      //               },
      //               child: Container(
      //                 width: 283,
      //                 height: 60,
      //                 decoration: BoxDecoration(
      //                   borderRadius: BorderRadius.circular(30),
      //                   color: const Color(0xffFFEACD),
      //                 ),
      //                 child: Center(
      //                     child: Text(
      //                   'Login',
      //                   style: TextStyle(
      //                       color: textBl,
      //                       fontWeight: FontWeight.w600,
      //                       fontSize: 18),
      //                 )),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //   ),
      // ),




//////////////////////////////////////////////////
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
//       // )
//     );
//   }
// }
