import 'package:flutter/material.dart';
import 'leaderboard_item.dart';

class Leaderboard extends StatelessWidget {
  final List<LeaderboardItem> items;

  const Leaderboard({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: items.map((item) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
          ),
          child: Row(
            children: [
              Text(
                item.name,
                style: const TextStyle(
                    color: Color.fromRGBO(180, 196, 0, 1),
                    fontFamily: 'HomeFont'),
              ),
              const SizedBox(width: 6),
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: FractionallySizedBox(
                    widthFactor: item.score,
                    child: Container(
                      height: 15,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(180, 196, 0, 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
