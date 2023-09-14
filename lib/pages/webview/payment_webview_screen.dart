import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaymentWebviewScreen extends StatefulWidget {
  const PaymentWebviewScreen({required this.invoiceUrl, super.key});

  final String? invoiceUrl;

  @override
  State<PaymentWebviewScreen> createState() => _PaymentWebviewScreenState();
}

class _PaymentWebviewScreenState extends State<PaymentWebviewScreen> {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pembayaran"),
      ),
      body: SafeArea(child: WebViewWidget(controller: controller)),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          // onNavigationRequest: (NavigationRequest request) {
          //   // if (request.url.startsWith('https://www.youtube.com/')) {
          //   //   return NavigationDecision.prevent;
          //   // }
          //   // return NavigationDecision.navigate;
          // },
        ),
      )
      ..loadRequest(Uri.parse(widget.invoiceUrl ?? "http://localhost"));
  }
}
