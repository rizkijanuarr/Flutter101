import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/e_animation_controller.dart';

class EAnimationView extends StatefulWidget {
  const EAnimationView({super.key});

  Widget build(context, EAnimationController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${controller.isAnimated}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                onPressed: () => controller.updateAnimationState(),
                child: const Text("Save"),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AnimatedRotation(
                    turns: (controller.isAnimated ? 360 : 0) / 360,
                    duration: const Duration(milliseconds: 900),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        "assets/img/un.jpg",
                      ),
                    ),
                  ),
                  AnimatedRotation(
                    turns: (controller.isAnimated ? 360 : 0) / 360,
                    duration: const Duration(milliseconds: 900),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        "assets/img/unp.jpg",
                      ),
                    ),
                  )
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: AnimatedContainer(
                      height: 70,
                      width: 70,
                      duration: const Duration(milliseconds: 2000),
                      margin: EdgeInsets.only(
                        left: controller.isAnimated ? 110 : 0,
                      ),
                      child: const CircleAvatar(
                        radius: 20.0,
                        backgroundImage: AssetImage(
                          "assets/img/kikew.jpg",
                        ),
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    height: 70,
                    width: 70,
                    duration: const Duration(milliseconds: 1800),
                    margin: EdgeInsets.only(
                      right: controller.isAnimated ? 110 : 0,
                    ),
                    child: const CircleAvatar(
                      radius: 20.0,
                      backgroundImage: AssetImage(
                        "assets/img/ancit.png",
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
              Center(
                child: AnimatedScale(
                  scale: controller.isAnimated ? 5.0 : 1.0,
                  duration: const Duration(milliseconds: 1800),
                  child: const CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage(
                      "assets/img/kedai-roti-ibu.png",
                    ),
                  ),
                ),
              ),
              const Divider(),
              AnimatedContainer(
                duration: const Duration(milliseconds: 1300),
                height: 50,
                width: 50,
                margin: EdgeInsets.only(
                  left: controller.isAnimated ? 350 : 0,
                ),
                decoration: BoxDecoration(
                  color: controller.isAnimated
                      ? Colors.tealAccent
                      : Colors.redAccent,
                ),
              ),
              const Divider(),
              Align(
                alignment: Alignment.centerRight,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1900),
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(
                    right: controller.isAnimated ? 350 : 0,
                  ),
                  decoration: BoxDecoration(
                    color: controller.isAnimated
                        ? Colors.redAccent
                        : Colors.blueAccent,
                  ),
                ),
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 2000),
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(
                        top: controller.isAnimated ? 100 : 0,
                        bottom: controller.isAnimated ? 100 : 0,
                      ),
                      decoration: BoxDecoration(
                        color: controller.isAnimated
                            ? Colors.purpleAccent
                            : Colors.amber,
                      ),
                    ),
                  ),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 2100),
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(
                      right: controller.isAnimated ? 100 : 0,
                      bottom: controller.isAnimated ? 10 : 0,
                      left: controller.isAnimated ? 100 : 0,
                    ),
                    decoration: BoxDecoration(
                      color: controller.isAnimated
                          ? Colors.deepOrangeAccent
                          : Colors.lightGreenAccent,
                    ),
                  ),
                ],
              ),
              AnimatedContainer(
                duration: const Duration(milliseconds: 2400),
                height: 50,
                width: 50,
                margin: EdgeInsets.only(
                  bottom: controller.isAnimated ? 10 : 0,
                  left: controller.isAnimated ? 100 : 0,
                ),
                decoration: BoxDecoration(
                  color: controller.isAnimated
                      ? Colors.yellowAccent
                      : Colors.indigoAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<EAnimationView> createState() => EAnimationController();
}
