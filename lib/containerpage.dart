

import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  static const Color rose = Color(0xFFA4677C);
  static const Color darkRose = Color(0xFF75445B);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Hello Everyone",
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: darkRose,
            ),
          ),

          const SizedBox(height: 8),

          Text(
            "Exploring Flutter widgets with style.",
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey.shade700,
            ),
          ),

          const SizedBox(height: 24),

          // Gradient Container
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              gradient: const RadialGradient(
                center: Alignment.topLeft,
                radius: 1.5,
                colors: [
                  Color(0xFFF7B6D2),
                  Color(0xFFA4677C),
                  Color(0xFF75445B),
                ],
              ),
              border: Border.all(
                width: 2,
                color: const Color(0xFFE6B5C8),
              ),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: rose.withValues(alpha: 0.25),
                  blurRadius: 14,
                  offset: const Offset(0, 7),
                ),
              ],
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),

                Text(
                  "Container!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  "Designing with simple widgets.",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            "Featuring cards",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: darkRose,
            ),
          ),

          const SizedBox(height: 12),

          // Card
          Card(
            color: Colors.white,
            elevation: 8,
            shadowColor: rose.withValues(alpha: 0.2),
            margin: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(
                color: Color(0xFFF1D8E2),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFF7B6D2),
                          Color(0xFFA4677C),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const Icon(
                      Icons.widgets,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),

                  const SizedBox(width: 16),

                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter Widgets",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: darkRose,
                          ),
                        ),

                        SizedBox(height: 6),

                        Text(
                          "Container • Card • Buttons",
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 24),

          const Text(
            "Three Buttons",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: darkRose,
            ),
          ),

          const SizedBox(height: 12),

          // Buttons
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  elevation: 5,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                ),
                child: const Text("Blue"),
              ),

              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                ),
                child: const Text("Green"),
              ),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  foregroundColor: rose,
                  side: const BorderSide(
                    color: rose,
                    width: 1.5,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 14,
                  ),
                ),
                child: const Text("Pink"),
              ),
            ],
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }
}