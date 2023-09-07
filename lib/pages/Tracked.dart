import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/models/LeagueModel.dart';
import 'package:pifootball/widgets/LeagueButton.dart';
import 'package:pifootball/widgets/PlusButton.dart';
import 'package:pifootball/widgets/PreMatchItem.dart';
import 'package:pifootball/models/PreMatchModel.dart';

class Tracked extends StatefulWidget {
	Tracked({Key? key}) : super(key: key);

	@override
	_TrackedState createState () => _TrackedState();
}

class _TrackedState extends State<Tracked> {
	List<PreMatchModel> matches = [
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Bologna', teamLogo1: 'assets/images/bologna.png', teamName2: 'Empoli', teamLogo2: 'assets/images/empoli.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 00'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Chelsea', teamLogo1: 'assets/images/chelsea.png', teamName2: 'Man City', teamLogo2: 'assets/images/mancity.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 30'),
		PreMatchModel(league: 'PREMIER LEAGUE', teamName1: 'Ameria', teamLogo1: 'assets/images/almeria.png', teamName2: 'Osasuna', teamLogo2: 'assets/images/osasuna.png', matchDate: 'Apr 16, 2023', matchTime: '19 : 00'),
	];
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
												'TRACKED',
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
						Column(
							mainAxisSize: MainAxisSize.max,
							children: [
								for(var match in matches) PreMatchItem(match: match),
								LeagueButton(league: LeagueModel(logo: 'assets/images/premier_league.png', name: 'PREMIER LEAGUE'),),
								const SizedBox(height: 30,),
								const PlusButton()
							],
						),
					],
				)
			),
		);
	}
}