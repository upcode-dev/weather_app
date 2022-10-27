part of containers;

class CitiesContainer extends StatelessWidget {
  const CitiesContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<City>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<City>>(
      converter: (Store<AppState> store) => store.state.cities,
      builder: builder,
    );
  }
}
