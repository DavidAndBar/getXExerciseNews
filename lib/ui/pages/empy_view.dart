import 'package:f_web_service_template/ui/controllers/news_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

class EmptyNews extends StatelessWidget {
  EmptyNews({Key? key}) : super(key: key);
  NewsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () async {
            await controller.getNews();
            logInfo("getting news");
          },
          child: const Text("Sport news"),
        ),
      ],
    ));
  }
}
