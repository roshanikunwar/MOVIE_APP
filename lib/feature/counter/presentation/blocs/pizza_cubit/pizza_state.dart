part of 'pizza_cubit.dart';

abstract class PizzaState extends Equatable {
  const PizzaState();
}

class PizzaInitial extends PizzaState {
  @override
  List<Object> get props => [];
}

class PizzaFetching extends PizzaState {
  @override
  List<Object?> get props => [];
}

class PizzaFetched extends PizzaState {
  const PizzaFetched(this.pizzaList);

  final List<Pizza> pizzaList;

  @override
  List<Object?> get props => [pizzaList];
}

class PizzaFetchError extends PizzaState {
  const PizzaFetchError(this.errorMessage);

  final String errorMessage;

  @override
  List<Object?> get props => [errorMessage];
}

// Initial
// Fetching
// Fetched/Loaded
// Error
