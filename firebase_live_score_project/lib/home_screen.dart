import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CricketMatch> _matchList = [];
  bool _inProgress = false;


  // @override
  // void initState() {
  //   super.initState();
  //   _getCricketMatches();
  // }
  //
  // Future<void> _getCricketMatches() async {
  //   _inProgress = true;
  //   setState(() {});
  //   _matchList.clear();
  //   final snapshots = await FirebaseFirestore.instance
  //       .collection('cricket')
  //       .get();
  //   for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshots.docs) {
  //     _matchList.add(
  //       CricketMatch(
  //         id: doc.id,
  //         team1: doc.get('team1'),
  //         team1Score: doc.get('team1_score'),
  //         team2: doc.get('team2'),
  //         team2Score: doc.get('team2_score'),
  //         isRunning: doc.get('is_running'),
  //         winner: doc.get('winner_team'),
  //       ),
  //     );
  //   }
  //   _inProgress = false;
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Live score')),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('cricket').snapshots(),
        builder: (context, snapshots) {
            for (QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshots.data!.docs) {
              _matchList.add(
                CricketMatch(
                  id: doc.id,
                  team1: doc.get('team1'),
                  team1Score: doc.get('team1_score'),
                  team2: doc.get('team2'),
                  team2Score: doc.get('team2_score'),
                  isRunning: doc.get('is_running'),
                  winner: doc.get('winner_team'),
                ),
              );
            }

          return ListView.builder(
            itemCount: _matchList.length,
            itemBuilder: (context, index) {
              final cricketMatch = _matchList[index];
              return ListTile(
                leading: CircleAvatar(backgroundColor: cricketMatch.isRunning ? Colors.green : Colors.red, radius: 12),
                title: Text('${cricketMatch.team1} vs ${cricketMatch.team2}'),
                trailing: Text('${cricketMatch.team1Score} - ${cricketMatch.team2Score}'),
                subtitle: Text(cricketMatch.isRunning ? "Pending . . ." :'Winner: ${cricketMatch.winner}'),
              );
            },
          );
        }
      ),
    );
  }
}

class CricketMatch {
  final String id;
  final String team1;
  final int team1Score;
  final String team2;
  final int team2Score;
  final bool isRunning;
  final String winner;

  CricketMatch({
    required this.id,
    required this.team1,
    required this.team1Score,
    required this.team2,
    required this.team2Score,
    required this.isRunning,
    required this.winner,
  });
}
