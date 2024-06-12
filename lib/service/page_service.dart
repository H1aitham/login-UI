import 'package:dio/dio.dart';
import 'package:three_intrfaces_app_with_api_etc/model/page_model.dart';

Future<List<PageModel>> bageModel() async {
  Dio req = Dio();
  Response response = await req.get("https://freetestapi.com/api/v1/birds");
  print(response);
  List<PageModel> page = List.generate(
    response.data.length,
    (index) => PageModel.fromMap(response.data[index]),
  );

  return page;
}
