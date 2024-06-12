import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt core = GetIt.instance;

inti() async {
  core.registerSingleton(await SharedPreferences.getInstance());
}
