import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

Function openWebView(link, context) {
  return () {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => WebViewContainer(link)),
    );
  };
}

class WebViewContainer extends StatefulWidget {
  final url;

  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
  var _url;
  final _key = UniqueKey();

  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: WebView(
          key: _key,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: _url,
        ))
      ],
    );
  }
}
