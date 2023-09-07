import 'package:flutter/material.dart';
import 'package:pifootball/models/PreMatchModel.dart';
import 'package:pifootball/widgets/PreMatchItem.dart';

class PreMatch extends StatefulWidget {
	PreMatch({Key? key}) : super(key: key);

	@override
	_PreMatchState createState() => _PreMatchState();
}

class _PreMatchState extends State<PreMatch> {
	List<PreMatchModel> matches = [
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Bologna', teamLogo1: 'assets/images/bologna.png', teamName2: 'Empoli', teamLogo2: 'assets/images/empoli.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 00'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Chelsea', teamLogo1: 'assets/images/chelsea.png', teamName2: 'Man City', teamLogo2: 'assets/images/mancity.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 30'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Ameria', teamLogo1: 'assets/images/almeria.png', teamName2: 'Osasuna', teamLogo2: 'assets/images/osasuna.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 00'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Bologna', teamLogo1: 'assets/images/bologna.png', teamName2: 'Empoli', teamLogo2: 'assets/images/empoli.png', matchDate: 'Apr 21, 2023', matchTime: '19 : 30'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Paris St.Germain', teamLogo1: 'assets/images/psg.png', teamName2: 'Man City', teamLogo2: 'assets/images/mancity.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 00'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Osasuna', teamLogo1: 'assets/images/osasuna.png', teamName2: 'Almeria', teamLogo2: 'assets/images/almeria.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 00'),
	];
	@override
	Widget build(BuildContext context) {
		return Column(
			children: [
				for(var match in matches) PreMatchItem(match: match)
			],
		);
	}
}