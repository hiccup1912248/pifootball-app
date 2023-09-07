import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pifootball/pages/Menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pifootball/pages/WebView.dart';
import 'firebase_options.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async {
	WidgetsFlutterBinding.ensureInitialized();
	await Firebase.initializeApp(
		options: DefaultFirebaseOptions.currentPlatform,
	);
	OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
	OneSignal.shared.setAppId("096c9832-b7ce-42b5-afeb-6241d6c7b644");
	// The promptForPushNotificationsWithUserResponse function will show the iOS or Android push notification prompt. We recommend removing the following code and instead using an In-App Message to prompt for notification permission
	OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
		print("Accepted permission: $accepted");
	});
  	runApp(const MyApp());
}

class MyApp extends StatelessWidget {
	const MyApp({super.key});

	// This widget is the root of your application.
	@override
	Widget build(BuildContext context) {
		return MaterialApp(
			title: 'pifootball',
			theme: ThemeData(
				primarySwatch: Colors.blue,
				fontFamily: 'Gotham'
			),
			home: const SplashScene(),
			debugShowCheckedModeBanner: false,
		);
	}
}

class SplashScene extends StatefulWidget {
	const SplashScene({super.key});

	@override
	State<SplashScene> createState() => _SplashSceneState();
}

class _SplashSceneState extends State<SplashScene> {

	bool showNextScene = false;

	final FirebaseRemoteConfig _remoteConfig = FirebaseRemoteConfig.instance;
	Future<void> _initConfig() async {
		await _remoteConfig.setConfigSettings(RemoteConfigSettings(
			fetchTimeout: const Duration(seconds: 60), // a fetch will wait up to 10 seconds before timing out
			minimumFetchInterval: const Duration(seconds: 1), // fetch parameters will be cached for a maximum of 1 hour
		));

		await _remoteConfig.fetchAndActivate();
	}

	@override
	void initState() {
		super.initState();
		_initConfig();
		Future.delayed(const Duration(seconds: 3), () {
			print(_remoteConfig);
			// if (_remoteConfig.getString('link').isNotEmpty) {
			// 	Navigator.push(context, MaterialPageRoute(builder: (context) => WebView(link: _remoteConfig.getString('link'))));
			// } else {
			// 	setState(() {
			// 		showNextScene = true;
			// 	});
			// }
      setState(() {
        showNextScene = true;
      });
		});
	}

	@override
	void dispose() {
		super.dispose();
	}

	@override
	Widget build(BuildContext context) {
		if (showNextScene) return Menu();
		return Scaffold(
			body: Container(
				width: double.infinity,
				height: double.infinity,
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
				child: SvgPicture.asset(
					'assets/images/logo.svg',
					fit: BoxFit.scaleDown,
				)
			),// This trailing comma makes auto-formatting nicer for build methods.
		);
	}
}
