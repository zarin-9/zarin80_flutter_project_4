
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  final formKey = GlobalKey<FormState>();

  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();

  bool isLogin = true;

  final emailRegex = RegExp(r'^[\w.-]+@[\w.-]+\.[a-zA-Z]{2,}$');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
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
                  controller: email,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter email";
                    }
                    if (!emailRegex.hasMatch(value)) {
                      return "Invalid email";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Password
                TextFormField(
                  controller: password,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter password";
                    }
                    if (value.length < 6) {
                      return "Minimum 6 characters";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 15),

                // Confirm Password
                if (!isLogin)
                  TextFormField(
                    controller: confirmPassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Confirm password";
                      }
                      if (value != password.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                  ),

                const SizedBox(height: 20),

                // Button
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            isLogin ? "Login Successful" : "Registration Successful",
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

                // Switch
                TextButton(
                  onPressed: () {
                    setState(() {
                      isLogin = !isLogin;
                      email.clear();
                      password.clear();
                      confirmPassword.clear();
                    });
                  },
                  child: Text(
                    isLogin
                        ? "New User? Register Here"
                        : "Already Registered? Login Here",
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
