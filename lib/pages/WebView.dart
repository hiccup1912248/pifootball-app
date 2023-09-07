import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
	String? link;
	WebView({Key? key, required this.link}): super(key: key);

	@override
	State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
	late final WebViewController controller;

	@override
	void initState() {
		super.initState();
		controller = WebViewController()..loadRequest(Uri.parse(widget.link!))..setJavaScriptMode(JavaScriptMode.unrestricted);
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: WebViewWidget(controller: controller),
		);
	}
}