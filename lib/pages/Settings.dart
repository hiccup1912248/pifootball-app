import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/widgets/SettingSwitch.dart';

class Settings extends StatefulWidget {
	Settings({Key? key}) : super(key: key);

	@override
	_SettingsState createState () => _SettingsState();
}

class _SettingsState extends State<Settings> {
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
												'SETTINGS',
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
						const SizedBox(height: 70,),
						Column(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								const Text(
									'NOTIFICATIONS',
									style: TextStyle(
										color: Colors.white,
										fontSize: 16,
										fontWeight: FontWeight.normal
									),
								),
								const Text(
									'OF MATCH RESULTS',
									style: TextStyle(
										color: Colors.white,
										fontSize: 16,
										fontWeight: FontWeight.normal
									),
								),
								const SizedBox(
									height: 15,
								),
								SettingSwitch()
							],
						),
						const SizedBox(height: 70,),
						Column(
							crossAxisAlignment: CrossAxisAlignment.center,
							children: [
								const Text(
									'NOTIFICATION',
									style: TextStyle(
										color: Colors.white,
										fontSize: 16,
										fontWeight: FontWeight.normal
									),
								),
								const Text(
									'OF CHANGES IN THE STANDINGS',
									style: TextStyle(
										color: Colors.white,
										fontSize: 16,
										fontWeight: FontWeight.normal
									),
								),
								const SizedBox(
									height: 15,
								),
								SettingSwitch()
							],
						),
					],
				)
			),
		);
	}
}