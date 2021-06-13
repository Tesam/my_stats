import 'package:my_stats/data/extra/sample_data/subjects.dart';
import 'package:my_stats/domain/entities/subject.dart';
import 'package:my_stats/domain/repositories/home_api_repository.dart';

class HomeApiImpl implements HomeApiRepository {

  @override
  Future<List<Subject>> pullSubjects() async {
    return subjects;
  }

}

