import 'package:flutter/material.dart';
import 'package:pifootball/models/Winner.dart';

class ChartItem extends StatelessWidget {
	Winner winner;

	ChartItem({required this.winner});

	@override
	Widget build(BuildContext context) {
		return Container(
			padding: const EdgeInsets.symmetric(vertical: 15, ),
			decoration: const BoxDecoration(
				border: Border.symmetric(horizontal: BorderSide(
					color: Color.fromRGBO(95, 167, 230, 1),
					width: 1.0,
					style: BorderStyle.solid
				))
			),
			child: Row(
				mainAxisSize: MainAxisSize.max,
				crossAxisAlignment: CrossAxisAlignment.center,
				children: [
					Container(
						width: MediaQuery.of(context).size.width * 0.3,
						child: Text(
							winner.club!,
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.mp!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.w!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.d!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.l!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.gf!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.ga!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.gd!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
					Container(
						width: MediaQuery.of(context).size.width * 0.08,
						alignment: Alignment.center,
						child: Text(
							winner.pts!.toString(),
							style: const TextStyle(
								color: Colors.white,
								fontWeight: FontWeight.w700,
								fontSize: 12
							),
						),
					),
				],
			),
		);
	}
}