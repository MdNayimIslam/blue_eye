import 'package:blue_eye/main.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class EmotionDetectionByPosePage extends StatefulWidget {
  const EmotionDetectionByPosePage({Key? key}) : super(key: key);

  @override
  State<EmotionDetectionByPosePage> createState() =>
      _EmotionDetectionByPosePageState();
}

class _EmotionDetectionByPosePageState
    extends State<EmotionDetectionByPosePage> {
  CameraImage? cameraImage;
  CameraController? cameraController;
  String output = '';
  @override
  void initState() {
    super.initState();
    loadCamera();
    loadmodel();
  }

  loadCamera() {
    cameraController = CameraController(cameras![0], ResolutionPreset.medium);
    cameraController!.initialize().then((value) {
      if (!mounted) {
        return;
      } else {
        setState(() {
          cameraController!.startImageStream((imageStream) {
            cameraImage = imageStream;
            runModel();
          });
        });
      }
    });
  }

  runModel() async {
    if (cameraImage != null) {
      var predictions = await Tflite.runModelOnFrame(
          bytesList: cameraImage!.planes.map((plane) {
            return plane.bytes;
          }).toList(),
          imageHeight: cameraImage!.height,
          imageWidth: cameraImage!.width,
          imageMean: 127.5,
          imageStd: 127.5,
          rotation: 90,
          numResults: 2,
          threshold: 0.1,
          asynch: true);
      // ignore: avoid_function_literals_in_foreach_calls
      predictions!.forEach((element) {
        setState(() {
          output = element['label'];
        });
      });
    }
  }

  loadmodel() async {
    await Tflite.loadModel(
        model: "assets/emotion_detection_by_pose/model.tflite", labels: "assets/emotion_detection_by_pose/labels.txt");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Emontion Detection By Pose",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
       body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            child: !cameraController!.value.isInitialized
                ? Container()
                : AspectRatio(
                    aspectRatio: cameraController!.value.aspectRatio,
                    child: CameraPreview(cameraController!),
                  ),
          ),
        ),
        Card(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Text(
                output,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
        )
      ]),
    );
  }
}
