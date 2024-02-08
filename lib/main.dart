import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : appBar(title: 'hello'),
        body: InAppWebView(
          initialUrlRequest: URLRequest(
              url: Uri.parse('https://matchmeifyoucan.today')
          ),
          initialOptions: InAppWebViewGroupOptions(
              android: AndroidInAppWebViewOptions(useHybridComposition: true)
          ),
        )
    );
  }
}

AppBar appBar({
  required String title
}){
  return AppBar(
      title: Text(
          title,
          style: const TextStyle(fontSize: 12)
      )
  );
}