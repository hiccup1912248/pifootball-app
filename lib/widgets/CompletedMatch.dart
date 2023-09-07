import 'package:flutter/material.dart';
import 'package:pifootball/models/CompletedMatchModel.dart';
import 'package:pifootball/widgets/CompletedMatchItem.dart';

class CompletedMatch extends StatefulWidget {
	CompletedMatch({Key? key}) : super(key: key);

	@override
	_CompletedMatchState createState() => _CompletedMatchState();
}

class _CompletedMatchState extends State<CompletedMatch> {
	List<CompletedMatchModel> matches = [
		CompletedMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Bologna', teamLogo1: 'assets/images/bologna.png', teamName2: 'Empoli', teamLogo2: 'assets/images/empoli.png', matchDate: 'Apr 16, 2023', score: '1 : 0'),
		CompletedMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Chelsea', teamLogo1: 'assets/images/chelsea.png', teamName2: 'Man City', teamLogo2: 'assets/images/mancity.png', matchDate: 'Apr 16, 2023', score: '1 : 2'),
		CompletedMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Ameria', teamLogo1: 'assets/images/almeria.png', teamName2: 'Osasuna', teamLogo2: 'assets/images/osasuna.png', matchDate: 'Apr 16, 2023', score: '3 : 2'),
		CompletedMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Bologna', teamLogo1: 'assets/images/bologna.png', teamName2: 'Empoli', teamLogo2: 'assets/images/empoli.png', matchDate: 'Apr 21, 2023', score: '0 : 1'),
		CompletedMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Paris St.Germain', teamLogo1: 'assets/images/psg.png', teamName2: 'Man City', teamLogo2: 'assets/images/mancity.png', matchDate: 'Apr 16, 2023', score: '1 : 2'),
		CompletedMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Osasuna', teamLogo1: 'assets/images/osasuna.png', teamName2: 'Almeria', teamLogo2: 'assets/images/almeria.png', matchDate: 'Apr 16, 2023', score: '1 : 0'),
	];
	@override
	Widget build(BuildContext context) {
		return Column(
			children: [
				for(var match in matches) CompletedMatchItem(match: match)
			],
		);
	}
}