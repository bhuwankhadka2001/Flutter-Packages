import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text =
      'Flutter is a mobile app development framework created by Google. It uses the Dart programming language and allows developers to build high-quality native apps for both iOS and Android platforms. With Flutter, developers can create beautiful and responsive user interfaces, implement complex business logic, and access native device features like camera, GPS, and sensors. Flutter offers a hot reload feature that speeds up the development process, and it also comes with a rich set of customizable widgets that make it easy to build great-looking apps. Flutter has gained popularity in recent years due to its ease of use and cross-platform capabilities. It has been used by companies like Alibaba, Tencent, and Google themselves to build successful apps. Overall, Flutter is a powerful tool for mobile app development that is worth considering for your next project.';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Readmore'),
      ),
      body: Container(
        padding: EdgeInsets.all(17),
        child: ReadMoreText(
          text,
          trimLines: 5,
          textAlign: TextAlign.justify,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Showmore',
          trimExpandedText: 'Showless',
          lessStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue[500],
          ),
          moreStyle: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue[500],
          ),
          style: TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}
