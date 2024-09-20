import 'package:basketball_counter/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Points Counter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Team A',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    '0',
                    style: TextStyle(
                      fontSize: 160,
                    ),
                  ),
                  CustomButton(
                    text: 'Add 1 Points',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Add 2 Points',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Add 3 Points',
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 470,
                child: VerticalDivider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Team B',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  const Text(
                    '0',
                    style: TextStyle(
                      fontSize: 160,
                    ),
                  ),
                  CustomButton(
                    text: 'Add 1 Points',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Add 2 Points',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: 'Add 3 Points',
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            text: 'Reset',
            onPressed: () {},
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
