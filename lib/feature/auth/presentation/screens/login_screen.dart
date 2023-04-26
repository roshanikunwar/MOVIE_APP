import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/core/router.gr.dart';
import 'package:flutter_online_course/feature/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_online_course/feature/counter/presentation/widgets/custom_form_field.dart';
import 'package:flutter_online_course/main.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  late final AuthBloc _registerBloc;

  @override
  void initState() {
    super.initState();
    _registerBloc = context.read<AuthBloc>();
  }

/*
  @override
  void dispose(){
    super.dispose();
    context.read<AuthBloc>().close();
    _registerBloc.close();

 */

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          logging: () {},
          loginSuccess: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Center(
                  child: Text(message),
                ),
                backgroundColor: Colors.green,
              ),
            );
            context.router.push(const MovieHomeRoute());
          },
          authError: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Center(
                  child: Text(message),
                ),
                backgroundColor: Colors.redAccent,
              ),
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('This is login form'),
        ),
        body: Form(
          key: _formkey,
          child: Column(
            children: <Widget>[
              CustomTextFromField(
                controller: _usernameController,
                labelText: 'Username',
                hintText: 'please add your username',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'user name is required';
                  } else if (value.length < 5) {
                    return 'Invalid user number';
                  }
                  return null;
                },
              ),
              CustomTextFromField(
                controller: _passwordController,
                labelText: 'Password',
                hintText: 'please add your password',
                validator: (password) {
                  if (password != null && password.contains('@')) {
                    return null;
                  }
                  return 'password must contain @ symbol';
                },
              ),

              // BlocSelector<AuthBloc, AuthState,LoggingState>(
              //   selector: (state)=>s,
              //   builder: (context, state) {
              //     return state.maybeWhen(
              //
              //       logging: () {
              //         return Padding(
              //           padding: const EdgeInsets.symmetric(vertical: 16.0),
              //           child: ElevatedButton(
              //             onPressed: () {
              //               if (_formkey.currentState!.validate()) {
              //                 _registerBloc.add(
              //                   LoginButtonClickEvent(_usernameController.text,
              //                       _passwordController.text),
              //                 );
              //               }
              //             },
              //             child: const Text('Login'),
              //           ),
              //         );
              //       }, orElse: () { return SizedBox(); },
              //     );
              //   },
              // ),
              BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () {
                      return _buildLoginButton(
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formkey.currentState!.validate()) {
                              _registerBloc.add(
                                LoginButtonClickEvent(_usernameController.text,
                                    _passwordController.text),
                              );
                            }
                          },
                          child: const Text('Login'),
                        ),
                      );
                    },
                    logging: () {
                      return _buildLoginButton(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Text('Login'),
                              Center(
                                child: SizedBox(
                                  height: 10,
                                  width: 10,
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),

              InkWell(
                onTap: () {
                  context.router.push(const RegisterRoute());
                },
                child: const Text("Don't  have an account?, Signup now"),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildLoginButton({required Widget child}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: child,
    );
  }
}
