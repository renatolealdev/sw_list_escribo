import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InAppBrowserPage extends StatefulWidget {
  const InAppBrowserPage({Key? key}) : super(key: key);

  @override
  _InAppBrowserPageState createState() => _InAppBrowserPageState();
}

class _InAppBrowserPageState extends State<InAppBrowserPage> {
  double _progress = 0.0;

  late InAppWebViewController webView;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.blueGrey.shade800,
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse("https://www.starwars.com/community"),
            ),
            onWebViewCreated: (InAppWebViewController controller) {
              webView = controller;
            },
            onProgressChanged:
                (InAppWebViewController controller, int progress) {
              setState(
                () {
                  _progress = progress / 100;
                },
              );
            },
          ),
          _progress < 1
              ? SizedBox(
                  height: 3,
                  child: LinearProgressIndicator(
                    value: _progress,
                    backgroundColor: Color.fromARGB(20, 134, 134, 134),
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
