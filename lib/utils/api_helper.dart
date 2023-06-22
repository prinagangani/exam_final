
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:exam_final/screens/modal/quizModal.dart';

class ApiHelper{
  Future<QuizModal> callApi()
  async {
    String link = "https://opentdb.com/api.php?amount=10&category=27&difficulty=easy&type=multiple";
    Uri uri = Uri.parse(link);
    var response = await http.get(uri);
    var json = jsonDecode(response.body);
    var user =  QuizModal.fromJson(json);
    return user;
  }
}