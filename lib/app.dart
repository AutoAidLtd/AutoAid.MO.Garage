import 'package:autoaid_garage/routes/router.dart';
import 'package:flutter/material.dart';

class AutoAidGarage extends StatefulWidget {
  const AutoAidGarage({super.key});

  @override
  State<AutoAidGarage> createState() => _AutoAidGarageState();
}

class _AutoAidGarageState extends State<AutoAidGarage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
    );
  }
}
