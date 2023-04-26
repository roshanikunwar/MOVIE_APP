import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_online_course/core/router.gr.dart';
import 'package:flutter_online_course/feature/auth/data/models/registration_model.dart';
import 'package:flutter_online_course/feature/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_online_course/feature/counter/presentation/widgets/custom_form_field.dart';

@RoutePage()
class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _formkey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _collegeController = TextEditingController();

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
  }
*/
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          success: (message) => context.router.push(
            const LoginRoute(),
          ),
        );
        // print("TYPE OF STATES ${state}");
        // if (state is RegisterSuccessState) {
        //   context.router.push(const LoginRoute());
        // }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Registration Form'),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: <Widget>[
                CustomTextFromField(
                  controller: _phoneController,
                  labelText: 'Phone No',
                  hintText: 'please add your phone no',
                  validator: (value) {},
                ),
                CustomTextFromField(
                  controller: _emailController,
                  labelText: 'Email',
                  hintText: 'please add your email',
                  validator: (value) {},
                ),
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
                CustomTextFromField(
                    controller: _firstNameController,
                    labelText: 'First Name',
                    hintText: 'please add your first name',
                    validator: (password) {}),
                CustomTextFromField(
                    controller: _lastNameController,
                    labelText: 'Last Name',
                    hintText: 'please add your last name',
                    validator: (password) {}),
                CustomTextFromField(
                    controller: _collegeController,
                    labelText: 'College Name',
                    hintText: 'please add your college name',
                    validator: (password) {}),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Date')),
                          );
                          RegistrationModel registrationModel =
                              RegistrationModel(
                            email: _emailController.text,
                            username: _usernameController.text,
                            password: _passwordController.text,
                            firstName: _firstNameController.text,
                            lastName: _lastNameController.text,
                            collegeName: _collegeController.text,
                            phoneNo: _phoneController.text,
                          );

                          _registerBloc.add(
                            RegisterButtonClickEvent(
                                registrationModel: registrationModel),
                          );
                        }
                      },
                      child: const Text('Register'),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
