import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/modules/home/presentation/page/sections/apod_section.dart';

import '../../../../core/helpers/keyboard_manager.dart';
import '../../domain/entities/apod_entity.dart';
import '../bloc/apod_bloc.dart';
import '../bloc/apod_event.dart';
import '../bloc/apod_state.dart';

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
          image: AssetImage('assets/images/stars.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: GestureDetector(
        onTap: () => _onTap(context),
        child: Scaffold(
          body: SafeArea(
            child: BlocBuilder<ApodBloc, ApodState>(
              bloc: _apodBloc,
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => const Center(
                    child: Text('Orelse'),
                  ),
                  failure: (e) => const Center(
                    child: Text('failure'),
                  ),
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
