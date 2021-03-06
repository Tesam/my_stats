import 'package:flutter/cupertino.dart';
import 'package:my_stats/domain/entities/subject.dart';
import 'package:my_stats/domain/usecases/home_use_case.dart';

class HomeProvider  extends ChangeNotifier{

  HomeProvider({this.homeUseCase}){
    getSubjects();
  }

  final HomeUseCase homeUseCase;

  //States
  List<Subject> subjects = [];

  //Events
  Future<void> getSubjects() async {
    subjects = await homeUseCase.getSubjects();
    notifyListeners();
  }

}