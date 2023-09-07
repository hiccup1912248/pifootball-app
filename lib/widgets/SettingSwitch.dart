import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';
import 'dart:math';

import 'package:widget_mask/widget_mask.dart';

class SettingSwitch extends StatefulWidget {
	SettingSwitch({Key? key}) : super(key: key);

	@override
	_SettingSwitchState createState () => _SettingSwitchState();
}

class _SettingSwitchState extends State<SettingSwitch> {
	final _controller = ValueNotifier<bool>(false);
	bool _checked = false;

	@override
	void initState() {
		super.initState();
		_controller.addListener(() {
			setState(() {
				if (_controller.value) {
					_checked = true;
				} else {
					_checked = false;
				}
			});
		});
	}

	@override
	void dispose() {
		_controller.removeListener(() {});
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		return ClipRRect(
			borderRadius: BorderRadius.all(Radius.circular(40)),
			child: Container(
				width: 100,
				height: 59,
				padding: const EdgeInsets.only(left: 1, top: 1),
				decoration: const BoxDecoration(
					borderRadius: BorderRadius.all(Radius.circular(40)),
					color: Color.fromRGBO(133, 218, 255, 1),
				),
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
							right: 20,
							bottom: -30,
							child: Transform.rotate(
								angle: 0.25 * pi,
								child: Container(
									color: const Color.fromRGBO(64, 135, 232, 1),
									child: const SizedBox(width: 25, height: 150,),
								),
							),
						),
						Positioned(
							right: -10,
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
							child: Transform.scale(
								scale: 2.2,
								child: Switch(
									value: _checked, onChanged: (value) => setState(() => _checked = value),
									activeTrackColor: Colors.transparent,
									inactiveTrackColor: Colors.transparent,
									inactiveThumbColor: const Color.fromRGBO(79, 117, 149, 1),
									activeColor: const Color.fromRGBO(189, 255, 0, 1),
								),
							)
						)
					],
				),
			),
		);
	}
}