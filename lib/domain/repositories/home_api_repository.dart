import 'package:my_stats/domain/entities/subject.dart';

abstract class HomeApiRepository {
  Future<List<Subject>> pullSubjects();
}