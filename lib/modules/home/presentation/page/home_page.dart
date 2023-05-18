import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/core/const/strings.dart';
import 'package:nasa_apod/modules/home/presentation/page/sections/apod_section.dart';
import 'package:nasa_apod/modules/home/presentation/page/sections/loading_apod_section.dart';

import '../../../../core/const/images.dart';
import '../../../../core/helpers/keyboard_manager.dart';
import '../../domain/entities/apod_entity.dart';
import '../bloc/apod_bloc.dart';
import '../bloc/apod_event.dart';
import '../bloc/apod_state.dart';
import 'sections/fail_load_page_section.dart';
import 'sections/toast_section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with KeyboardManager {
  late final ApodBloc _apodBloc;

  List<ApodEntity> responseList = [];

  @override
  void initState() {
    super.initState();

    _apodBloc = Modular.get<ApodBloc>();

    getStartDate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppImages.backgroundImage),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: () => _onTap(context),
        onPanCancel: () => _onTap(context),
        child: Scaffold(
          body: SafeArea(
            child: BlocListener<ApodBloc, ApodState>(
              bloc: _apodBloc,
              listener: (context, stateListener) {
                stateListener.maybeWhen(
                  orElse: () => null,
                  failure: (message) => ToastSection.toast(
                    context: context,
                    message: message,
                    title: AppStrings.error,
                    duration: const Duration(seconds: 3),
                  ),
                );
              },
              child: BlocBuilder<ApodBloc, ApodState>(
                bloc: _apodBloc,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox(),
                    failure: (message) => const FailLoadPageSection(),
                    loading: () => const LoadingApodSection(),
                    success: (entity) => ApodSection(
                      apodEntityList: entity,
                      apodBloc: _apodBloc,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  void getStartDate() {
    final dateTime = DateTime.now();
    final finalDateTime = dateTime.subtract(const Duration(days: 10));

    String formattedDateTime =
        '${finalDateTime.year.toString().padLeft(4, '0')}-'
        '${finalDateTime.month.toString().padLeft(2, '0')}-'
        '${finalDateTime.day.toString().padLeft(2, '0')}';

    _apodBloc.add(ApodEvent.getApod(startDate: formattedDateTime));
  }

  void _onTap(BuildContext context) {
    hideKeyboard(context);
  }
}
