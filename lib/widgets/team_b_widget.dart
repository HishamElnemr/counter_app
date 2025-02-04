import 'package:basketball_app/cubit/counter_cubit.dart';
import 'package:basketball_app/cubit/counter_states.dart';
import 'package:basketball_app/widgets/elevated_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class TeamBWidget extends StatelessWidget {
  int teamBpoints = 0;
  TeamBWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterStates>(
      builder: (context, state) {
        return Column(
          children: [
            const Text(
              "Team B",
              style: TextStyle(
                fontFamily: "Kanit-Medium",
                fontSize: 25,
              ),
            ),
            Text(
              '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w400,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    ElevatedButtonWidget(
                      text: "+ 1",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamBPoints(1);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButtonWidget(
                      text: "+ 2",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamBPoints(2);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButtonWidget(
                      text: "+ 3",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamBPoints(3);
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    ElevatedButtonWidget(
                      text: "- 1",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamBPoints(-1);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButtonWidget(
                      text: "- 2",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamBPoints(-2);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButtonWidget(
                      text: "- 3",
                      onPressed: () {
                        BlocProvider.of<CounterCubit>(context).TeamBPoints(-3);
                      },
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButtonWidget(
              text: "Reset",
              onPressed: () {
                BlocProvider.of<CounterCubit>(context)
                    .ResetBPoints(buttonNumber: 0);
              },
            ),
          ],
        );
      },
      listener: (context, state) {},
    );
  }
}
