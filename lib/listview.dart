
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  bool isLogin = true;

  final emailPattern =
      RegExp(r'^[\w.-]+@[\w.-]+\.[a-zA-Z]{2,}$');

  final passwordPattern = RegExp(r'^.{6,}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login & Registration"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [

          Text(
            isLogin ? "Login" : "Registration",
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),

          const SizedBox(height: 20),

          Form(
            key: formKey,
            child: Column(
              children: [

                // Email
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter email";
                    } else if (!emailPattern.hasMatch(value)) {
                      return "Invalid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Password
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter password";
                    } else if (!passwordPattern.hasMatch(value)) {
                      return "Minimum 6 characters";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Confirm Password
                if (!isLogin)
                  TextFormField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Confirm password";
                      } else if (value != passwordController.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),

                const SizedBox(height: 20),

                // Login / Register Button
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            isLogin
                                ? "Login Successful"
                                : "Registration Successful",
                          ),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: Text(isLogin ? "Login" : "Register"),
                ),

                const SizedBox(height: 10),

                // Switch Button
                TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                      formKey.currentState!.reset();
                      passwordController.clear();
                      confirmPasswordController.clear();
                    });
                  },
                  child: Text(
                    isLogin
                        ? "New User? Register Here"
                        : "Already Registered? Login Here",
                    style: const TextStyle(color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
