import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/models/LeagueModel.dart';
import 'package:pifootball/widgets/LeagueButton.dart';
import 'package:http/http.dart' as http;

class League extends StatefulWidget {
	League({Key? key}):super(key: key);

	@override
	_LeagueState createState() => _LeagueState();
}

class _LeagueState extends State<League> {
	// List<LeagueModel> leagues = [];
	List<LeagueModel> leagues = [
		LeagueModel(name: 'PREMIER LEAGUE', logo: 'assets/images/premier_league.png'),
		LeagueModel(name: 'BUNDESLIGA', logo: 'assets/images/bundesliga.png'),
		LeagueModel(name: 'UEFA EUROPA LEAGUE', logo: 'assets/images/europa_league.png'),
		LeagueModel(name: 'SERIE A', logo: 'assets/images/serie.png',),
		LeagueModel(name: 'UEFA CHAMPIONS LEAGUE', logo: 'assets/images/uefa_champions_league.png'),
		LeagueModel(name: 'LIGUE 1', logo: 'assets/images/ligue.png'),
	];

	@override
	void initState() {
		super.initState();
		fetchLeagues();
	}

	void fetchLeagues() async {
		// http.get(Uri.parse('https://api-football-beta.p.rapidapi.com/leagues'), headers: <String, String>{
		// 	'X-RapidAPI-Key': '95e2884a19msh5254d867a7b1e57p1f07a0jsn2544f1d9a650',
		// 	'X-RapidAPI-Host': 'api-football-beta.p.rapidapi.com'
		// }).then((response) {
		// 	print('Response body: ${response.body}');
		// });
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			body: Container(
				width: double.infinity,
				height: double.infinity,
				padding: const EdgeInsets.only(top: 35),
				decoration: const BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment.topCenter,
						end: Alignment.bottomCenter,
						colors: [
							Color.fromRGBO(20, 41, 62, 1),
							Color.fromRGBO(27, 58, 92, 1)
						]
					)
				),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.start,
					mainAxisSize: MainAxisSize.max,
					children: [
						Container(
							width: double.infinity,
							child: Stack(
								alignment: Alignment.center,
								children: [
									Positioned(
										left: 5,
										child: IconButton(
											onPressed: () => Navigator.pop(context),
											icon: const Icon(
												Icons.arrow_back,
												color: Color.fromRGBO(93, 162, 225, 1),
											)
										),
									),
									Column(
										mainAxisSize: MainAxisSize.max,
										crossAxisAlignment: CrossAxisAlignment.center,
										children: [
											SvgPicture.asset('assets/images/logo.svg', fit: BoxFit.scaleDown, width: 131, height: 29,),
											const SizedBox(height: 5,),
											const Text(
												'LEAGUES',
												style: TextStyle(
													color: Color.fromRGBO(189, 255, 0, 1),
													fontSize: 24,
													fontWeight: FontWeight.bold,
												),
											)
										],
									),
								],
							),
						),
						const SizedBox(height: 20,),
						Expanded(
							child: Container(
								child: ListView.builder(itemCount: leagues.length, itemBuilder: (context, index) => LeagueButton(league: leagues[index])),
							)
						),
					],
				)
			),
		);
	}
}