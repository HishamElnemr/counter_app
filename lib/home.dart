import 'package:basketball_app/widgets/team_a_widget.dart';
import 'package:basketball_app/widgets/team_b_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Points Counter",
          style: TextStyle(
            fontFamily: "Kanit-Bold",
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(child: TeamAWidget()),
                  const VerticalDivider(
                    color: Color.fromARGB(148, 0, 0, 0),
                    thickness: 1,
                  ),
                  Expanded(child: TeamBWidget()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
