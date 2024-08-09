import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/h_http_request_loading_controller.dart';

class HHttpRequestLoadingView extends StatefulWidget {
  const HHttpRequestLoadingView({super.key});

  Widget build(context, HHttpRequestLoadingController controller) {
    controller.view = this;

    if (controller.loading) {
      return const Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "Loading...",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: const Text("Http Req Load"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: controller.users.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = controller.users[index];
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        backgroundImage: NetworkImage(
                          item["avatar"],
                        ),
                      ),
                      title: Text(item["first_name"]),
                      subtitle: Text(item["email"]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<HHttpRequestLoadingView> createState() =>
      HHttpRequestLoadingController();
}
