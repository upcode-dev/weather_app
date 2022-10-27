import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/src/models/index.dart';
import 'package:weather_app/src/presentation/result_widget.dart';
import 'package:weather_app/src/presentation/search_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: (BuildContext context, AppState state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Center(child: Text('Weather App')),
            actions: <Widget>[
              IconButton(
                onPressed: () {
                  if (state.cities.isNotEmpty) {
                    // StoreProvider.of<AppState>(context).dispatch(GetWeather(state.cities[0].lat, state.cities[0].lon, state.cities[0].name));
                  } else {
                    // ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('fail')));
                  }
                },
                icon: const Icon(Icons.refresh),
              ),
            ],
          ),
          body: Builder(
            builder: (BuildContext context) {
              if (state.isLoading) {
                return Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xbb268de2),
                        Color(0x70229eff),
                        //Color(0x00a6e1e5),
                      ],
                    ),
                  ),
                  child: const Center(child: CircularProgressIndicator()),
                );
              }

              if (state.canShowResult) {
                return const ResultWidget();
              }

              return const SearchView();
            },
          ),
        );
      },
    );
  }
}
