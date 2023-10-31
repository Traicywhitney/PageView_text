import 'package:flutter/material.dart';
import 'package:flutter_pageview_text/app_data_text.dart';
import 'package:flutter_pageview_text/display_text.dart';

class PageviewTextScreen extends StatefulWidget {
  const PageviewTextScreen({super.key});

  @override
  State<PageviewTextScreen> createState() => _PageviewTextScreenState();
}

class _PageviewTextScreenState extends State<PageviewTextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7cbbc3),
        title: Text(
          'J.K. Rowling Quotes            ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 350,
            width: 500,
            child: PageView.builder(
                itemCount: appDataTextList.length,
                itemBuilder: (context, index) {
                  return DisplayText(appDataText: appDataTextList[index]);
                }),
          )
        ],
      ),
    );
  }
}
