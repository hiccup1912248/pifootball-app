import 'package:flutter/material.dart';
import 'dart:math';

class PlusButton extends StatelessWidget {
	const PlusButton({Key? key});

	@override
	Widget build(BuildContext context) {
		return Container(
			width: 70,
			height: 70,
			padding: const EdgeInsets.only(left: 1, top: 1),
			decoration: const BoxDecoration(
				borderRadius: BorderRadius.all(Radius.circular(70)),
				color: Color.fromRGBO(133, 218, 255, 1),
				boxShadow: [
					BoxShadow(
						offset: Offset(0, 4),
						blurRadius: 4,
						color: Color.fromRGBO(0, 0, 0, 0.25)
					)
				]
			),
			child: ClipRRect(
				borderRadius: BorderRadius.circular(70),
				child: Stack(
					children: [
						Container(
							width: double.infinity,
							padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
							decoration: const BoxDecoration(
								color: Color.fromRGBO(59, 127, 220, 1),
								borderRadius: BorderRadius.all(Radius.circular(40)),
							),
							child: const SizedBox(
								width: double.infinity,
								height: double.infinity,
							),
						),
						Positioned(
							right: 35,
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
							right: 5,
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
							child: IconButton(
								onPressed: (){},
								icon: const Icon(Icons.add),
								iconSize: 40,
								color: Colors.white,
							)
						)
					],
				),
			),
		);
	}
}