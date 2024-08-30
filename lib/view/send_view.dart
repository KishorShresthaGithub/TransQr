import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';

class SendView extends StatefulWidget {
  const SendView({super.key});

  @override
  State<SendView> createState() => _SendViewState();
}

class _SendViewState extends State<SendView> {
  // payload to be sent
  String payload = "";

  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  void handleTextChange() {
    setState(() {
      payload = textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.sizeOf(context).height;
    final double screenWidth = MediaQuery.sizeOf(context).height;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Send'),
          leading: IconButton(
            onPressed: () {
              GoRouter.of(context).go("/");
            },
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        body: SafeArea(
            child: Container(
                padding: const EdgeInsets.all(20),
                height: screenHeight,
                width: screenWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: QrImageView(
                        data: payload,
                        version: QrVersions.auto,
                        size: screenWidth * 0.3,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Expanded(
                        child: TextField(
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      onSubmitted: (_) {
                        handleTextChange();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      decoration: const InputDecoration(
                        hintText: "Enter text to encode to QR",
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintTextDirection: TextDirection.ltr,
                        fillColor: Colors.transparent,
                      ),
                      controller: textController,
                      keyboardType: TextInputType.text,
                      autofocus: true,
                      textInputAction: TextInputAction.done,
                    ))
                  ],
                ))));
  }
}
