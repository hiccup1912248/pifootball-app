import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/pages/Collection.dart';
import 'package:pifootball/pages/Cards.dart';
import 'package:pifootball/pages/League.dart';
import 'package:pifootball/pages/LootBox.dart';
import 'package:pifootball/pages/Match.dart';
import 'package:pifootball/pages/Settings.dart';
import 'package:pifootball/pages/Tracked.dart';
import 'package:pifootball/pages/WinnersChart.dart';
import 'package:pifootball/widgets/MenuButton.dart';

class Menu extends StatelessWidget {
	const Menu({super.key});

	void goToLeagues() {
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
						Column(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								SvgPicture.asset('assets/images/logo.svg', fit: BoxFit.scaleDown, width: 131, height: 29,),
								const SizedBox(height: 5,),
								const Text(
									'MENU',
									style: TextStyle(
										color: Color.fromRGBO(189, 255, 0, 1),
										fontSize: 24,
										fontWeight: FontWeight.bold,
									),
								)
							],
						),
						const SizedBox(height: 20,),
						Column(
							mainAxisSize: MainAxisSize.max,
							children: [
								MenuButton(label: 'LEAGUES', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => League()))),
								MenuButton(label: 'LOOTBOX', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => LootBox()))),
								MenuButton(label: 'MATCH', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Match()))),
								MenuButton(label: 'WINNERS CHART', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => WinnersChart()))),
								MenuButton(label: 'SETTINGS', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Settings()))),
								MenuButton(label: 'TRACKED', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Tracked()))),
								MenuButton(label: 'CARDS', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Cards()))),
								MenuButton(label: 'COLLECTION', onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Collection()))),
							],
						),
					],
				)
			),
		);
	}
}