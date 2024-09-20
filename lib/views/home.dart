import 'package:basketball_counter/cubit/counter_cubit.dart';
import 'package:basketball_counter/cubit/counter_states.dart';
import 'package:basketball_counter/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      listener: (context, state) {},
      builder: (context, state) {
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
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamA}',
                        style: const TextStyle(
                          fontSize: 160,
                        ),
                      ),
                      CustomButton(
                        text: 'Add 1 Points',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeam(teamName: 'A', num: 1);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: 'Add 2 Points',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeam(teamName: 'A', num: 2);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: 'Add 3 Points',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeam(teamName: 'A', num: 3);
                        },
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
                      Text(
                        '${BlocProvider.of<CounterCubit>(context).teamB}',
                        style: const TextStyle(
                          fontSize: 160,
                        ),
                      ),
                      CustomButton(
                        text: 'Add 1 Points',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeam(teamName: 'B', num: 1);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: 'Add 2 Points',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeam(teamName: 'B', num: 2);
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomButton(
                        text: 'Add 3 Points',
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context)
                              .incrementTeam(teamName: 'B', num: 3);
                        },
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
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).resetCounter();
                },
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
        );
      },
    );
  }
}
