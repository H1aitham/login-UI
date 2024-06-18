import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:three_intrfaces_app_with_api_etc/config/get_it_config.dart';
import 'package:three_intrfaces_app_with_api_etc/model/page_model.dart';
import 'package:three_intrfaces_app_with_api_etc/res/app_color.dart';
import 'package:three_intrfaces_app_with_api_etc/res/app_style.dart';
import 'package:three_intrfaces_app_with_api_etc/service/page_service.dart';
import 'package:three_intrfaces_app_with_api_etc/view/pagethree.dart';

class ProjectListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgr,
      ),
      backgroundColor: backgr,
      body: FutureBuilder<List<PageModel>>(
          future: bageModel(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(
                  child: Text(
                'Error: ${snapshot.error}',
                style: TextStyle(color: textWh),
              ));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No projects found'));
            } else {
              List<PageModel> givedate = snapshot.data!;
              return Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(27),
                    child: Container(
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: textCy,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'ALL projects ',
                            style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                color: textWh),
                          ),
                          const SizedBox(
                            width: 150,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: backgr),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              Container(
                                height: 16,
                                width: 16,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: backgr),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: givedate.length,
                    itemBuilder: (context, index) {
                      PageModel give = givedate[index];
                      return Container(
                        height: 140,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 16),
                        decoration: BoxDecoration(
                          color: textWh,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: AssetImage('assets/images/photo.jpg'),
                              fit: BoxFit.contain,
                              alignment: Alignment.topLeft),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 19,
                              left: 50,
                              child: Container(
                                child: Text(
                                  '6/15/\n2024',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: textWh),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 24,
                              left: 250,
                              child: Container(
                                child: Text(
                                  'Project name : ${give.name}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: textCy,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 30,
                              left: 263,
                              child: Container(
                                child: Text(
                                  'Crearted by :  ${give.diet}',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: textCy,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  )),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ProjectListScreenTtree()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: textWh),
                        child: Center(
                            child: Text('Display input',
                                style: secondaryTextStyle)),
                      ),
                    ),
                  ),
                ],
              );
            }
          }),
    );
  }
}
