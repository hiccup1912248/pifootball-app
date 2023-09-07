import 'dart:math';
import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
	String label;
	Function onPressed;
	MenuButton({super.key, required this.label, required this.onPressed});

	@override
	Widget build(BuildContext context) {
		return (
			Container(
				margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 40),
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
							right: 33,
							bottom: -30,
							child: Transform.rotate(
								angle: 0.25 * pi,
								child: Container(
									color: const Color.fromRGBO(64, 135, 232, 1),
									child: const SizedBox(width: 30, height: 120,),
								),
							),
						),
						Positioned(
							right: 13,
							bottom: -30,
							child: Transform.rotate(
								angle: 0.25 * pi,
								child: Container(
									color: const Color.fromRGBO(64, 135, 232, 1),
									child: const SizedBox(width: 10, height: 100,),
								),
							),
						),
						Positioned.fill(
							child: TextButton(
								onPressed: () => onPressed(),
								style: const ButtonStyle(
									overlayColor: MaterialStatePropertyAll(Color.fromRGBO(26, 39, 72, 0.08)),
								),
								child: Text(
									label,
									style: const TextStyle(
										fontSize: 17,
										fontWeight: FontWeight.w700,
										color: Colors.white
									)
								)
							),
						)
					],
				),
			)
		);
	}
}