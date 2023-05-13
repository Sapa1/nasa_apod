import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
      // appBar: AppBar(
      //   title: const Text(AppStrings.titleOfProject),
      // ),
      body: SafeArea(
        child: Center(
          child: BlocBuilder<ApodBloc, ApodState>(
            bloc: _apodBloc,
            builder: (context, state) {
              return state.maybeWhen(
                orElse: () => const SizedBox(),
                loading: () => const SizedBox(),
                failure: (message) => const SizedBox(),
                success: (apodEntity) => ListView.builder(
                  shrinkWrap: true,
                  itemCount: apodEntity.length,
                  itemBuilder: (context, index) => ImageApodWidget(
                    url: apodEntity[index].url,
                    title: apodEntity[index].title,
                    date: apodEntity[index].date,
                    description: apodEntity[index].description,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
