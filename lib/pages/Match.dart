import 'package:flutter/material.dart';
import 'package:pifootball/widgets/CompletedMatch.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/widgets/Prematch.dart';

class Match extends StatefulWidget {
	Match({Key? key}) : super(key: key);

	@override
	_MatchState createState() => _MatchState();
}

class _MatchState extends State<Match> {
	@override
	Widget build(BuildContext context) {
		return DefaultTabController(
			length: 2,
			child: Scaffold(
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
													'MATCHES',
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
							const SizedBox(height: 30,),
							Container(
								width: MediaQuery.of(context).size.width,
								margin: const EdgeInsets.symmetric(horizontal: 30),
								padding: EdgeInsets.zero,
								decoration: const BoxDecoration(
									color: Color.fromRGBO(33, 102, 156, 1),
									borderRadius: BorderRadius.all(Radius.circular(7)),
									boxShadow: [
										BoxShadow(
											color: Color.fromRGBO(0, 0, 0, 0.25),
											offset: Offset(0, 4),
											blurRadius: 4
										)
									]
								),
								child: const TabBar(
									padding: EdgeInsets.zero,
									labelColor: Color.fromRGBO(9, 41, 110, 1),
									labelStyle: TextStyle(
										fontSize: 13,
										fontWeight: FontWeight.w700
									),
									unselectedLabelColor: Colors.white,
									unselectedLabelStyle: TextStyle(
										fontSize: 13,
										fontWeight: FontWeight.w700
									),
									indicator: BoxDecoration(
										color: Color.fromRGBO(189, 255, 0, 1),
										borderRadius: BorderRadius.all(Radius.circular(7)),
										boxShadow: [
											BoxShadow(
												color: Color.fromRGBO(0, 0, 0, 0.25),
												offset: Offset(4, 0),
												blurRadius: 4
											)
										]
									),
									indicatorPadding: EdgeInsets.zero,
									tabs: [
										Tab(
											child: Text('PREMATCH'),
										),
										Tab(
											child: Text('COMPLETED'),
										),
									],
								),
							),
							const SizedBox(height: 20,),
							Expanded(
								child: TabBarView(
								children: [
									PreMatch(),
									CompletedMatch()
									]
								)
							)
						],
					)
				),
			)
		);
	}
}