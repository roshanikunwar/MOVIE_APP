import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/feature/counter/data/models/pizza.dart';
import 'package:flutter_online_course/feature/counter/presentation/blocs/pizza_cubit/pizza_cubit.dart';

class PizzaListScreen extends StatefulWidget {
  const PizzaListScreen({Key? key}) : super(key: key);
  

  @override
  State<PizzaListScreen> createState() => _PizzaListScreenState();
}

class _PizzaListScreenState extends State<PizzaListScreen> {
  late PizzaCubit _pizzaCubit;

  @override
  void initState() {
    super.initState();
    _pizzaCubit=context.read<PizzaCubit>();

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBlocBuilder()
          ],
        ),
      ),
    );
  }

  BlocBuilder<PizzaCubit, PizzaState> _buildBlocBuilder() {
    return BlocBuilder<PizzaCubit, PizzaState>(
            bloc: _pizzaCubit,
            builder: (context, state) {
              if (state is PizzaFetching) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is PizzaFetched) {
                final List<Pizza> pizzas = state.pizzaList;
                return Expanded(
                  child: ListView.builder(
                    itemCount: pizzas.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final pizza = pizzas[index];
                      return Center(
                        child: ListTile(
                          leading: Text(
                            pizza.id.toString(),
                          ),
                          title: Text(
                            pizza.name,
                          ),
                          subtitle: Text(
                            pizza.price.toString(),
                          ),
                        ),
                      );
                    },
                  ),
                );
              } else if (state is PizzaFetchError) {
                final String message = state.errorMessage;
                return Center(
                  child: Text(message),
                );
              }
              return const Text("No Pizza Available");
            },
          );
  }

  Widget getCenterWidget(){
    return Center(child: CircularProgressIndicator(),);
  }
}
