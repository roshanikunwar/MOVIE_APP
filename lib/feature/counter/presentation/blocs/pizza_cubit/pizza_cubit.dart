import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/feature/counter/data/models/pizza.dart';

part 'pizza_state.dart';

class PizzaCubit extends Cubit<PizzaState> {
  PizzaCubit() : super(PizzaInitial());

  Map<String, dynamic>? mockedApiJson = {
    'id': 123,
    'name': "Veg pizza",
    'price': 500.00
  };

  void fetchPizza() {
    emit(PizzaFetching());

    /// mocking api calls
    Future.delayed(const Duration(seconds: 5), () => _fetchMockedApi());
  }

  ///data from API
  void _fetchMockedApi() {
    ///data from API
    if (mockedApiJson != null && mockedApiJson!.isNotEmpty) {
      //final Pizza pizza = Pizza.fromJson(mockedApiJson!);
      List<Pizza> pizzaList = Pizza.pizzaList;
      emit(PizzaFetched(pizzaList));
    } else {
      emit(const PizzaFetchError('Unable to fetch Pizza from API'));
    }
  }
}
