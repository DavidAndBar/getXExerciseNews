import 'package:f_web_service_template/data/model/news_item.dart';
import 'package:get/get.dart';

import '../../domain/use_case/news.dart';

class NewsController extends GetxController {
  var _news = <NewsItem>[].obs;
  var _loading = false.obs;

  get loading => _loading.value;
  List get news => _news;
  News newsCase = Get.find();

  Future<String> getNews() async {
    var list = await newsCase.getNews();
    _news.value = list;
    return Future.value("OK");
  }
  // functions getNews() and reset()

}
