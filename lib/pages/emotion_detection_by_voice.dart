import 'package:flutter/material.dart';
import 'package:tflite_audio/tflite_audio.dart';

class EmotionDetectionByVoicePage extends StatefulWidget {
  const EmotionDetectionByVoicePage({Key? key}) : super(key: key);
  @override
  State<EmotionDetectionByVoicePage> createState() =>
      _EmotionDetectionByVoicePageState();
}

class _EmotionDetectionByVoicePageState
    extends State<EmotionDetectionByVoicePage> {
  String _sound = "Press the button to start";
  bool _recording = false;
  late Stream<Map<dynamic, dynamic>> result;

  @override
  void initState() {
    super.initState();
    TfliteAudio.loadModel(
        model: "assets/emotion_detection_by_voice/soundclassifier.tflite",
        label: "assets/emotion_detection_by_voice/labels.txt",
        numThreads: 1,
        isAsset: true,
        inputType: '');
  }

  void _recorder() {
    String recognition = "";
    if (!_recording) {
      setState(() => _recording = true);
      result = TfliteAudio.startAudioRecognition(
        numOfInferences: 1,
        sampleRate: 44100,
        bufferSize: 22016,
      );
      result.listen((event) {
        recognition = event["recognitionResult"];
      }).onDone(() {
        setState(() {
          _recording = false;
          _sound = recognition.split(" ")[1];
        });
      });
    }
  }

  // ignore: unused_element
  void _stop() {
    TfliteAudio.stopAudioRecognition();
    setState(() => _recording = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Emontion Detection By Voice",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MaterialButton(
                onPressed: _recorder,
                color: _recording ? Colors.blueGrey : Colors.blue,
                textColor: Colors.blue,
                // ignore: sort_child_properties_last
                child: const Icon(Icons.mic, size: 50),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
              ),
              Text(
                // ignore: unnecessary_string_interpolations
                '$_sound',
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
