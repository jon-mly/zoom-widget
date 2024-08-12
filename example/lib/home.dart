import 'package:flutter/material.dart';
import 'package:mobile/examples/custom_zoom.dart';
import 'package:mobile/examples/init_total_zoom_out.dart';
import 'package:mobile/examples/simple_zoom.dart';
import 'package:mobile/examples/zoomable_image_gallery.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Zoom examples')),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SimpleZoom()),
              );
            },
            child: const Text('Simple zoom'),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const InitTotalZoomOut()),
              );
            },
            child: const Text('Init total zoom out'),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const CustomZoom()),
              );
            },
            child: const Text('Custom zoom'),
          ),
          const SizedBox(height: 8.0),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const ZoomableImageGallery(),
                ),
              );
            },
            child: const Text('Zoomable image gallery'),
          ),
        ],
      ),
    );
  }
}
