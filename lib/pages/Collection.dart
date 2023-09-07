import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Collection extends StatefulWidget {
	Collection({Key? key}) : super(key: key);

	@override
	_CollectionState createState () => _CollectionState();
}

class _CollectionState extends State<Collection> {
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
												'COLLECTION',
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
								margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
								child: Column(
									mainAxisSize: MainAxisSize.max,
									mainAxisAlignment: MainAxisAlignment.spaceAround,
									children: [
										Row(
											mainAxisAlignment: MainAxisAlignment.spaceAround,
											mainAxisSize: MainAxisSize.max,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: [
												Image.asset('assets/images/cards/messi.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
											],
										),
										Row(
											mainAxisAlignment: MainAxisAlignment.spaceAround,
											mainAxisSize: MainAxisSize.max,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: [
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
											],
										),
										Row(
											mainAxisAlignment: MainAxisAlignment.spaceAround,
											mainAxisSize: MainAxisSize.max,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: [
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
											],
										),
										Row(
											mainAxisAlignment: MainAxisAlignment.spaceAround,
											mainAxisSize: MainAxisSize.max,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: [
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
												Image.asset('assets/images/cards/blank.png', width: 83,),
											],
										),
									],
								),
							)
						)
					],
				)
			),
		);
	}
}