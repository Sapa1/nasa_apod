import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/modules/home/data/datasources/apod_datasource_impl.dart';
import 'package:nasa_apod/modules/home/data/repositories/apod_repository_impl.dart';

import '../../core/const/routes.dart';
import 'data/datasources/apod_datasource.dart';
import 'domain/repositories/apod_repository.dart';
import 'domain/usecases/get_apod_usecase.dart';
import 'presentation/bloc/apod_bloc.dart';
import 'presentation/page/detail_page.dart';
import 'presentation/page/home_page.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [
        //Bloc
        Bind.singleton<ApodBloc>((i) => ApodBloc(getApodUseCase: i.get())),

        //UseCases
        Bind.factory<GetApodUseCase>(
            (i) => GetApodUseCase(apodRepository: i.get())),

        //Repositories
        Bind.factory<ApodRepository>(
            (i) => ApodRepositoryImpl(i.get(), i.get())),

        //DataSources
        Bind.factory<ApodDataSource>(
            (i) => ApodDataSourceImpl(nasaApodDio: i.get())),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          AppRoutes.initial,
          child: (context, args) => const HomePage(),
        ),
        ChildRoute(
          AppRoutes.detailsPage,
          child: (context, args) => DetailPage(
            entity: args.data['entity'],
          ),
        ),
      ];
}
