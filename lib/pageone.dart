import 'package:flutter/material.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('PageOne'),
        ),
        body: Center(
            child: ElevatedButton(
          child: const Text('Go to PageTwo'),
          onPressed: () async {
            var navigationResult = await Navigator.pushNamed(context, '/second');
    
            if (navigationResult == true) {
              showDialog(
                  context: context,
                  builder: (builder) => const AlertDialog(
                        title: Text('success'),
                      ));
            }
          },
        )),
      ),
    );
  }
}
