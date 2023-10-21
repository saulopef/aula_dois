import 'package:aula_dois/app/ds/components/%20cwb_buttons.dart';
import 'package:aula_dois/app/ds/components/cwb_inputs.dart';
import 'package:flutter/material.dart';

import 'app/ds/values/cwb_spacing.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool keepMe = false;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return MaterialApp(
      title: 'BarcodeWiFi6',
      home: Scaffold(
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Image.asset(
                    'assets/png/header.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const Expanded(child: SizedBox()),
                Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: OutlinedButton(
                    child: const Text(
                      "Acessar pelo QR Code",
                    ),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Configurar Acesso",
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Configurar via QrCode",
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Esqueci minha Senha",
                            overflow: TextOverflow.clip,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
            Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: Form(
                    key: formKey,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Image.asset('assets/png/logo.png'),
                          const CwbSpacing(spacing: 36),
                          CwbTextFormField(
                            labelText: "Usuário",
                            textCapitalization: TextCapitalization.characters,
                            validator: (text) {
                              if (text == null || text.isEmpty) {
                                return 'Campo obrigatório';
                              }
                              if (text.length < 6) {
                                return 'O usuário deve ter pelo menos 6 caracteres';
                              }
                              if (!text.contains("CWB")) {
                                return 'O usário diferente do padrão';
                              }
                              return null;
                            },
                          ),
                          const CwbSpacing(spacing: 20),
                          CwbTextFormField(
                            labelText: "Senha",
                            obscureText: true,
                            validator: (senha) {
                              if (senha == null || senha.isEmpty) {
                                return 'Campo obrigatório';
                              }
                              if (senha.length < 8) {
                                return 'A senha deve ter pelo menos 8 caracteres';
                              }
                              return null;
                            },
                          ),
                          const CwbSpacing(spacing: 30),
                          CwbPrimaryButton(
                            label: 'Entrar',
                            onPressed: () {
                              if (formKey.currentState?.validate() ?? false) {
                                debugPrint('Usuário: Logado');
                              }
                            },
                          ),
                          const Expanded(child: SizedBox()),
                          CwbCheckBox(
                            value: keepMe,
                            label: 'Mantenha-me logado',
                            onChanged: (value) {
                              setState(() {
                                keepMe = value ?? false;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CwbCheckBox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  final String label;
  const CwbCheckBox({
    this.value = false,
    this.onChanged,
    this.label = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged?.call(!value);
      },
      child: Row(
        children: [
          AbsorbPointer(
            child: Checkbox(
              value: value,
              onChanged: (_) {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              side: MaterialStateBorderSide.resolveWith(
                (states) => const BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
          ),
          Text(label),
        ],
      ),
    );
  }
}
