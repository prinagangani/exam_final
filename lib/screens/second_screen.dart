import 'package:exam_final/screens/modal/quizModal.dart';
import 'package:exam_final/utils/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? ht, hf;

  @override
  Widget build(BuildContext context) {
    ht = Provider.of<HomeProvider>(context, listen: true);
    hf = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
      ),
    );
  }
}
