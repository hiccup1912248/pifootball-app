import 'dart:math';
import 'package:flutter/material.dart';
import 'package:pifootball/models/CompletedMatchModel.dart';

class CompletedMatchItem extends StatefulWidget {
	CompletedMatchModel match;
	CompletedMatchItem({required this.match});

	@override
	_CompletedMatchItemState createState() => _CompletedMatchItemState();
}

class _CompletedMatchItemState extends State<CompletedMatchItem> {
	@override
	Widget build(BuildContext context) {
		return (
			Container(
				margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
				width: MediaQuery.of(context).size.width,
				padding: const EdgeInsets.only(left: 1, top: 1),
				decoration: const BoxDecoration(
					color: Color.fromRGBO(133, 218, 255, 1),
					borderRadius: BorderRadius.all(Radius.circular(5)),
					boxShadow: [
						BoxShadow(
							color: Color.fromRGBO(0, 0, 0, 0.25),
							blurRadius: 4,
							offset: Offset(0, 4)
						)
					]
				),
				child: Stack(
					children: [
						Container(
							width: double.infinity,
							padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
							decoration: const BoxDecoration(
								color: Color.fromRGBO(59, 127, 220, 1),
								borderRadius: BorderRadius.all(Radius.circular(5)),
							),
							child: const SizedBox(
								width: double.infinity,
								height: 48,
							),
						),
						Positioned(
							right: 60,
							bottom: -30,
							child: Transform.rotate(
								angle: 0.25 * pi,
								child: Container(
									color: const Color.fromRGBO(64, 135, 232, 1),
									child: const SizedBox(width: 30, height: 150,),
								),
							),
						),
						Positioned(
							right: 29,
							bottom: -30,
							child: Transform.rotate(
								angle: 0.25 * pi,
								child: Container(
									color: const Color.fromRGBO(64, 135, 232, 1),
									child: const SizedBox(width: 10, height: 150,),
								),
							),
						),
						Positioned.fill(
							child: Container(
								padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.center,
									mainAxisSize: MainAxisSize.max,
									mainAxisAlignment: MainAxisAlignment.spaceAround,
									children: [
										Text(
											widget.match.league!,
											style: const TextStyle(
												fontSize: 10,
												fontWeight: FontWeight.w700,
												color: Color.fromRGBO(121, 192, 255, 1)
											),
										),
										Row(
											mainAxisSize: MainAxisSize.max,
											mainAxisAlignment: MainAxisAlignment.spaceBetween,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: [
												Expanded(
													child: Row(
														mainAxisAlignment: MainAxisAlignment.spaceBetween,
														children: [
															Container(
																width: MediaQuery.of(context).size.width * 0.22,
																child: Text(
																	widget.match.teamName1!,
																	style: const TextStyle(
																		fontSize: 17,
																		fontWeight: FontWeight.w700,
																		color: Colors.white
																	),
																),
															),
															const SizedBox(width: 10,),
															Image.asset(
																widget.match.teamLogo1!,
																width: 22,
																height: 22,
																fit: BoxFit.contain,
															),
														],
													),
												),
												const SizedBox(width: 5,),
												Container(
													width: 80,
													margin: const EdgeInsets.symmetric(horizontal: 3),
													child: Column(
														mainAxisSize: MainAxisSize.max,
														mainAxisAlignment: MainAxisAlignment.spaceBetween,
														children: [
															Text(
																widget.match.matchDate!,
																style: const TextStyle(
																	color: Colors.white,
																	fontSize: 12,
																	fontWeight: FontWeight.w700
																),
															),
															const SizedBox(height: 5,),
															Text(
																widget.match.score!,
																style: const TextStyle(
																	color: Color.fromRGBO(189, 255, 0, 1),
																	fontWeight: FontWeight.w700,
																	fontSize: 24
																),
															)
														],
													),
												),
												const SizedBox(width: 5,),
												Expanded(
													child: Row(
														mainAxisAlignment: MainAxisAlignment.start,
														children: [
															Image.asset(
																widget.match.teamLogo2!,
																width: 22,
																height: 22,
																fit: BoxFit.contain,
															),
															const SizedBox(width: 10,),
															Container(
																width: MediaQuery.of(context).size.width * 0.22,
																child: Text(
																	widget.match.teamName2!,
																	style: const TextStyle(
																		fontSize: 17,
																		fontWeight: FontWeight.w700,
																		color: Colors.white
																	),
																),
															),
														],
													)
												)
											],
										),
									]
								),
							) 
						)
					],
				),
			)
		);
	}
}