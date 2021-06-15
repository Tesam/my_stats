import 'package:my_stats/data/repositories/home_api_impl.dart';
import 'package:my_stats/domain/repositories/home_api_repository.dart';
import 'package:my_stats/domain/usecases/home_use_case.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final List<SingleChildWidget> dependencies = [
  Provider<HomeApiRepository>(
    create: (_) => HomeApiImpl(),
  ),
  Provider<HomeUseCase>(
    create: (context) =>
        HomeUseCase(context.read<HomeApiRepository>(),
        ),
  ),
];