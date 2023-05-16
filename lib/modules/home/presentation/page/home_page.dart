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

  List<ApodEntity>? filteredList;

  @override
  void initState() {
    super.initState();

    _apodBloc = Modular.get<ApodBloc>();

    _apodBloc.add(const ApodEvent.getApod());
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
                          success: (apodEntity) => ApodSection(
                            apodEntityList: apodEntity,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context) {
    hideKeyboard(context);
  }
}
