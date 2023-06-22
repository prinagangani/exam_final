
import 'package:exam_final/screens/modal/quizModal.dart';
import 'package:exam_final/utils/api_helper.dart';
import 'package:flutter/foundation.dart';

class HomeProvider extends ChangeNotifier {

  QuizModal? data;
  ApiHelper apiHelper = ApiHelper();

  Future<QuizModal> find() async {
    QuizModal quizModal = await apiHelper.callApi();
    QuizModal data = quizModal;
    return data;
  }

  void change(Data)
  {
    data = Data;
    notifyListeners();
  }
}