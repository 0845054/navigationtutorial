import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(true),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PageTwo'),
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text('Go to PageOne'),
          onPressed: () => Navigator.pop(context, true),
        )),
      ),
    );
  }
}
