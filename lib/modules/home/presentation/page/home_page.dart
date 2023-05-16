import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:nasa_apod/core/styles/colors.dart';

import '../../../../core/const/routes.dart';
import '../../../../core/helpers/keyboard_manager.dart';
import '../bloc/apod_bloc.dart';
import '../bloc/apod_event.dart';
import '../bloc/apod_state.dart';
import '../widget/image_apod_widget.dart';
import '../widget/text_form_field_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with KeyboardManager {
  late final ApodBloc _apodBloc;
  late final FocusNode _focusNode;
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _controller = TextEditingController();

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
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      right: 0,
                      top: 20,
                      bottom: 20,
                    ),
                    // padding: const EdgeInsets.all(0),
                    child: TextFormFieldWidget(
                      hintText: 'Search',
                      focusNode: _focusNode,
                      cursorColor: AppColors.gray,
                      autofocus: false,
                      controller: _controller,
                      keyboardType: TextInputType.name,
                    ),
                  ),
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
                            itemBuilder: (context, index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: ImageApodWidget(
                                type: WidgetType.mainInfo,
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
