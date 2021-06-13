import 'package:my_stats/domain/entities/subject.dart';
import 'package:my_stats/domain/repositories/home_api_repository.dart';

class HomeUseCase {

  HomeUseCase(this.homeApiRepository);

  final HomeApiRepository homeApiRepository;

  Future<List<Subject>> getSubjects() {
    return homeApiRepository.pullSubjects();
  }
}