import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

/// call this widget in MaterialApp - home.
class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "https://google.com",
      appBar: AppBar(
        title: Text("WebView Demo"),
        centerTitle: true,
      ),
      withZoom: true,
      withLocalStorage: true,
      initialChild: Container(
        color: Colors.redAccent,
        child: const Center(
          child: Text("Loading...."),
        ),
      ),
    );
  }
}