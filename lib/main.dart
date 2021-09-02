import 'package:flutter/material.dart';
import 'package:playground_kudus/360image.dart';
import 'package:playground_kudus/virtualtour.dart';
import 'package:playground_kudus/webviewpage.dart';

void main() => runApp(const MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => WebViewPage()));
            },
            child: const Text('Web View'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => PanoramaImage()));
            },
            child: const Text('360 Paronama'),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed:  () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => VirtualTour()));
            },
            child: const Text('Virtual Tour'),
          ),
        ],
      ),
    );
  }
}
