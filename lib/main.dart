import 'package:canton_design_system/canton_design_system.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notespace/src/config/constants.dart';
import 'package:notespace/src/ui/views/home_view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  await Hive.openBox('notespace');

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(ProviderScope(child: MyApp()));
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CantonApp(
      title: kAppTitle,
      primaryLightColor: CantonColors.purple,
      primaryLightVariantColor: CantonColors.purple[200]!,
      primaryDarkColor: CantonDarkColors.purple,
      primaryDarkVariantColor: CantonDarkColors.purple[200]!,
      home: HomeView(),
    );
  }
}
