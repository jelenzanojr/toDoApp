// import 'package:animate_do/animate_do.dart';
// import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/presentation/presentation.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // final GlobalKey _parentKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    WidgetsBinding.instance.addPostFrameCallback((_) async {});

    return Scaffold(
      key: SizeConfig.scaffoldHomeKey,
      drawer: const SideMenu(),
      appBar: AppBar(
        title: SearchField(
          searchCallback: (String search) {
            context.read<HomeBloc>().add(
                  HomeEvent.loadData(search),
                );
          },
        ),
        leading: const IconButton(
          icon: Icon(Icons.menu),
          color: Colors.white,
          onPressed: SizeConfig.controlMenu,
        ),
      ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              const Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: SafeArea(
                child: Column(
                  children: [
                    // const SizedBox(height: SizeConfig.kDefaultPadding),
                    BlocBuilder<HomeBloc, HomeState>(
                      builder: (context, state) {
                        final loading = state.whenOrNull(
                              done: (contracts, loading, error, message) {
                                return (loading ?? false) &&
                                    contracts.isNotEmpty;
                              },
                            ) ??
                            true;
                        if (loading) {
                          return const LinearProgressIndicator(
                            color: Colors.white,
                            backgroundColor: Colors.green,
                          );
                        }
                        return const SizedBox();
                      },
                    ),
                    Expanded(
                      child: BlocBuilder<HomeBloc, HomeState>(
                        builder: (context, state) {
                          return const HomeProductListView();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
