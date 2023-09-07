import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LootBox extends StatefulWidget {
	LootBox({Key? key}) : super(key: key);

	List<String> lootBoxImagePaths = [
		'assets/images/lootbox/1.png',
		'assets/images/lootbox/2.png',
		'assets/images/lootbox/3.png',
		'assets/images/lootbox/4.png',
		'assets/images/lootbox/5.png',
		'assets/images/lootbox/6.png',
		'assets/images/lootbox/7.png',
		'assets/images/lootbox/8.png',
		'assets/images/lootbox/9.png',
		'assets/images/lootbox/10.png',
		'assets/images/lootbox/11.png',
	];

	@override
	_LootBoxState createState () => _LootBoxState();
}

class _LootBoxState extends State<LootBox> {
	late final Timer timer;
	int _index = 0;

	@override
	void initState() {
		super.initState();
		Future.delayed(const Duration(seconds: 1), () {
			timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
				setState(() {
					if (_index <= 9){
						_index++;
					} else {
						_index = 3;
					}
				});
			});
		});
	}

	@override
	void dispose() {
		timer.cancel();
		super.dispose();
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
												'LOOTBOX',
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
								margin: const EdgeInsets.only(bottom: 50),
								alignment: Alignment.center,
								child: AnimatedSwitcher(
									duration: const Duration(milliseconds: 100),
									child: Image.asset(
										widget.lootBoxImagePaths[_index % widget.lootBoxImagePaths.length],
									),
									key: UniqueKey(),
								),
							)
						)
					],
				)
			),
		);
	}
}