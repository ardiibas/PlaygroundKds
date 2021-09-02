import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class PanoramaImage extends StatefulWidget {
  @override
  _PanoramaImageState createState() => _PanoramaImageState();
}

class _PanoramaImageState extends State<PanoramaImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panorama Demo'),
      ),
      body: Panorama(
        zoom: 1,
        animSpeed: 1.0,
        child: Image.network('https://images.unsplash.com/photo-1552288092-76e7d732366c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1654&q=80'),
      ),
    );
  }
}
