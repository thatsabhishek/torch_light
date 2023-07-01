import 'package:flutter/material.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchLight extends StatefulWidget {
  const TorchLight({super.key});

  @override
  State<TorchLight> createState() => TorchLightState();
}

class TorchLightState extends State<TorchLight> {
  final bgcolor = const Color(0xFF1A1A1A);
  final textcolor = const Color(0xFFE0E0E0);
  var isActive = false;
  var controller = TorchController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: bgcolor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title:
              const Text("Torch Light", style: TextStyle(color: Colors.white)),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      isActive ? 'assets/torch_on.png' : 'assets/torch_off.png',
                      width: 250,
                      height: 250,
                      color: isActive ? null : Colors.blue.withOpacity(1.0),
                    ),
                    SizedBox(
                      height: size.height * 0.1,
                    ),
                    CircleAvatar(
                        minRadius: 30,
                        maxRadius: 45,
                        child: Transform.scale(
                          scale: 1.5,
                          child: IconButton(
                            onPressed: () {
                              controller.toggle();
                              isActive = !isActive;
                              setState(() {});
                            },
                            icon: const Icon(Icons.power_settings_new),
                          ),
                        )),
                  ],
                ),
              ),
            )),
            const Text("Developed by Abhishek Gupta",
                style: TextStyle(color: Colors.white, fontSize: 20)),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ));
  }
}
