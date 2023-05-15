import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/core/const/routes.dart';

import '../bloc/apod_bloc.dart';
import '../bloc/apod_event.dart';
import '../bloc/apod_state.dart';
import '../widget/image_apod_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ApodBloc _apodBloc;

  @override
  void initState() {
    super.initState();

    _apodBloc = Modular.get<ApodBloc>();

    _apodBloc.add(const ApodEvent.getApod());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: BlocBuilder<ApodBloc, ApodState>(
                  bloc: _apodBloc,
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => const Center(
                        child: Text('OrElse state'),
                      ),
                      loading: () => const Center(
                        child: Text('Loading state'),
                      ),
                      failure: (message) => const Center(
                        child: Text('Failure state'),
                      ),
                      success: (apodEntity) => ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: apodEntity.length,
                        itemBuilder: (context, index) => ImageApodWidget(
                          url: apodEntity[index].url,
                          title: apodEntity[index].title,
                          date: apodEntity[index].date,
                          description: apodEntity[index].description,
                          onTap: () => Modular.to.pushNamed(
                            AppRoutes.detailsPage,
                            arguments: {
                              'entity': apodEntity[index],
                            },
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
