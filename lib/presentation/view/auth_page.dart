import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/ds/design_system.dart';
import '../viewmodel/auth_viewmodel.dart';
import '../viewmodel/state/auth_state.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  final LoginViewModel viewModel = LoginViewModel();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LoginViewModel, LoginState>(
          bloc: viewModel,
          listener: (context, state) {
            state.maybeWhen(
              success: () {
                // Navigate to the next screen or show success message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Login successful!')),
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return switch (state) {
              LoginStateReady(
                :final phoneNumber,
              ) =>
                SafeArea(
                  child: Form(
                    key: _formKey,
                    child: Center(
                      child: SizedBox(
                        width: 500,
                        height: 500,
                        child: Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: AppInsets.card,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Logo/Title Section
                                SizedBox(height: AppSpacing.xxl),
                                Icon(
                                  Icons.eco, // Cajueiro tree icon
                                  size: AppDimensions.iconXxl * 2,
                                  color: AppColors.primary,
                                ),
                                SizedBox(height: AppSpacing.md),
                                Text(
                                  'Bem-vindo ao Cajueiro Fala',
                                  style: context.headlineMedium.copyWith(
                                    color: AppColors.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: AppSpacing.sm),
                                Text(
                                  'A voz de Cajueiro da Praia do Piauí',
                                  style: context.bodyLarge.copyWith(
                                    color: AppColors.textSecondary,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: AppSpacing.xxxl),

                                // Email Field
                                TextFormField(
                                  keyboardType: TextInputType.emailAddress,
                                  style: AppTypography.inputText,
                                  decoration: InputDecoration(
                                    labelText: 'Número de celular',
                                    hintText: 'Digite seu número de celular',
                                    prefixIcon: Icon(
                                      Icons.phone_android_outlined,
                                      color: AppColors.textSecondary,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    // Handle phone number input
                                    viewModel.updatePhoneNumber(value);
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor, digite seu email';
                                    }
                                    if (!RegExp(r'^\+?[1-9]\d{1,14}$')
                                        .hasMatch(value)) {
                                      return 'Digite um número de celular válido';
                                    }
                                    return null;
                                  },
                                ),
                                SizedBox(height: AppSpacing.lg),
                                // Login Button
                                ElevatedButton(
                                  onPressed: () =>
                                      viewModel.login(phoneNumber: phoneNumber),
                                  style: ElevatedButton.styleFrom(
                                    minimumSize: Size(double.infinity,
                                        AppDimensions.buttonHeightLarge),
                                  ),
                                  child: Text(
                                    'Entrar',
                                    style: context.labelLarge.copyWith(
                                      color: AppColors.textOnPrimary,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              _ => CircularProgressIndicator(),
            };
          }),
    );
  }
}
