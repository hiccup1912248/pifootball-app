import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/models/Winner.dart';
import 'package:pifootball/widgets/ChartItem.dart';

class WinnersChart extends StatefulWidget {
	WinnersChart({Key? key}) : super(key: key);

	@override
	_WinnersChartState createState () => _WinnersChartState();
}

class _WinnersChartState extends State<WinnersChart> {
	String _selectedSeason = '2022 - 2023';
	List<Winner> chart = [
		Winner(club: '1. Paris St.Germain',  mp: 19, w: 15, d: 3, l: 1, gf: 53, ga: 9, gd: 44, pts: 48),
		Winner(club: '2. Bologna', mp: 19, w: 12, d: 4, l: 3, gf: 45, ga: 22, gd: 23, pts: 40),
		Winner(club: '3. Man City', mp: 19, w: 11, d: 5, l: 3, gf: 35, ga: 27, gd: 8, pts: 38),
		Winner(club: '4. Almeria', mp: 19, w: 11, d: 5, l: 3, gf: 35, ga: 27, gd: 8, pts: 38),
		Winner(club: '5. Empoli', mp: 19, w: 11, d: 5, l: 3, gf: 35, ga: 27, gd: 8, pts: 38),
		Winner(club: '6. Osasuna', mp: 19, w: 11, d: 5, l: 3, gf: 35, ga: 27, gd: 8, pts: 38),
		Winner(club: '7. Chelsea', mp: 19, w: 11, d: 5, l: 3, gf: 35, ga: 27, gd: 8, pts: 38),
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
												'WINNERS CHART',
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
									'assets/images/premier_league.png',
									width: 101,
									height: 101,
									fit: BoxFit.cover,
								),
								const SizedBox(height: 20,),
								const Text(
									'PREMIER LEAGUE',
									style: TextStyle(
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
								const Text(
									'SEASON',
									style: TextStyle(
										color: Colors.white,
										fontWeight: FontWeight.w700,
										fontSize: 13,
									),
								),
								const SizedBox(height: 10,),
								Container(
									padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
									decoration: const BoxDecoration(
										color: Color.fromRGBO(189, 255, 0, 1),
										borderRadius: BorderRadius.all(Radius.circular(10)),
										boxShadow: [
											BoxShadow(
												offset: Offset(0, 4),
												blurRadius: 4,
												color: Color.fromRGBO(0, 0, 0, 0.25)
											)
										]
									),
									child: DropdownButton(
										underline: Container(),
										iconEnabledColor: const Color.fromRGBO(8, 41, 110, 1),
										dropdownColor: const Color.fromRGBO(189, 255, 0, 1),
										value: _selectedSeason,
										items: const [
											DropdownMenuItem(
												value: '2022 - 2023',
												child: Text(
													'2022 - 2023',
													style: TextStyle(
														color: Color.fromRGBO(8, 41, 110, 1),
														fontWeight: FontWeight.w700,
														fontSize: 13
													),
												),
											),
											DropdownMenuItem(
												value: '2021 - 2022',
												child: Text(
													'2021 - 2022',
													style: TextStyle(
														color: Color.fromRGBO(8, 41, 110, 1),
														fontWeight: FontWeight.w700,
														fontSize: 13
													),
												)
											),
											DropdownMenuItem(
												value: '2020 - 2021',
												child: Text(
													'2020 - 2021',
													style: TextStyle(
														color: Color.fromRGBO(8, 41, 110, 1),
														fontWeight: FontWeight.w700,
														fontSize: 13
													),
												)
											)
										],
										onChanged: (v) => {
											setState(() => _selectedSeason = v!,)
										}
									),
								),
								const SizedBox(height: 30,),
								Container(
									padding: const EdgeInsets.symmetric(horizontal: 10),
									child: Column(
										mainAxisSize: MainAxisSize.max,
										children: [
											Row(
												mainAxisSize: MainAxisSize.max,
												children: [
													Container(
														width: MediaQuery.of(context).size.width * 0.3,
														alignment: Alignment.center,
														child: const Text(
															'Club',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'MP',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'W',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'D',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'L',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'GF',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'GA',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'GD',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
													Container(
														width: MediaQuery.of(context).size.width * 0.08,
														alignment: Alignment.center,
														child: const Text(
															'Pts',
															style: TextStyle(
																color: Color.fromRGBO(110, 118, 255, 1),
																fontWeight: FontWeight.w700,
																fontSize: 15
															),
														),
													),
												],
											),
											const SizedBox(height: 5),
											for (var item in chart) ChartItem(winner: item)
										],
									),
								),
							],
						),
					],
				)
			),
		);
	}
}