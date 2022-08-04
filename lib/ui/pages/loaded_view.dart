import 'package:f_web_service_template/common/configuration.dart';
import 'package:f_web_service_template/data/remote/guardian_client.dart';
import 'package:f_web_service_template/ui/controllers/news_controller.dart';
import 'package:f_web_service_template/ui/widgets/list_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadedView extends StatelessWidget {
  LoadedView({Key? key}) : super(key: key);
  NewsController newsController = Get.find();

  Future _refreshList(BuildContext context) async {
    await newsController.getNews();
    // here call showNews on the controller
  }

  @override
  Widget build(BuildContext context) {
    List<ListItem> items = [];

    for (var news in newsController.news) {
      items.add(ListItem(news));
    }

    return Expanded(
      child: GestureDetector(
        onHorizontalDragEnd: (details) {
          // here call reset on the controller
        },
        child: RefreshIndicator(
          child: ListView(
            children: items,
          ),
          onRefresh: () => _refreshList(context),
        ),
      ),
    );
  }
}
