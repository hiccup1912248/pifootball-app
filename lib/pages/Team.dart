import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/models/LeagueModel.dart';
import 'package:pifootball/models/TeamModel.dart';
import 'package:pifootball/widgets/TeamButton.dart';

class Team extends StatelessWidget {
	LeagueModel? league;
	Team({Key? key, required this.league});

	List<TeamModel> teams = [
		TeamModel(name: 'BOLOGNA', logo: 'assets/images/bologna.png'),
		TeamModel(name: 'EMPOLI', logo: 'assets/images/empoli.png'),
		TeamModel(name: 'MANCHESTER CITY', logo: 'assets/images/mancity.png'),
		TeamModel(name: 'CHELSEA', logo: 'assets/images/chelsea.png'),
		TeamModel(name: 'OSASUNA', logo: 'assets/images/osasuna.png'),
		TeamModel(name: 'ALMERIA', logo: 'assets/images/almeria.png'),
		TeamModel(name: 'PARIS SAIT-GERMAIN', logo: 'assets/images/psg.png'),
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
												'TEAMS',
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
							children: [
								Image.asset(
									league!.logo,
									width: 101,
									height: 101,
									fit: BoxFit.cover,
								),
								const SizedBox(height: 15,),
								Text(
									league!.name,
									style: const TextStyle(
										color: Color.fromRGBO(111, 188, 255, 1),
										fontWeight: FontWeight.w700,
										fontSize: 18
									),
								)
							],
						),
						const SizedBox(height: 30,),
						Column(
							mainAxisSize: MainAxisSize.max,
							children: [
								for(var team in teams) TeamButton(team: team)
							],
						),
					],
				)
			),
		);
	}
}