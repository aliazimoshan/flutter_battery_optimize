import 'package:flutter/material.dart';

import 'package:flutter_battery_optimize/flutter_battery_optimize.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Disable Battery Optimizations Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              MaterialButton(
                  child: Text("Is Auto Start Enabled"),
                  onPressed: () async {
                    bool isAutoStartEnabled =
                        await FlutterBatteryOptimize.isAutoStartEnabled;
                    Fluttertoast.showToast(
                        msg:
                            "Auto start is ${isAutoStartEnabled ? "Enabled" : "Disabled"}");
                  }),
              MaterialButton(
                  child: Text("Is Battery optimization disabled"),
                  onPressed: () async {
                    bool isBatteryOptimizationDisabled =
                        await FlutterBatteryOptimize
                            .isBatteryOptimizationDisabled;
                    Fluttertoast.showToast(
                        msg:
                            "Battery optimization is ${!isBatteryOptimizationDisabled ? "Enabled" : "Disabled"}");
                  }),
              MaterialButton(
                  child: Text("Is Manufacturer Battery optimization disabled"),
                  onPressed: () async {
                    bool isManBatteryOptimizationDisabled =
                        await FlutterBatteryOptimize
                            .isManufacturerBatteryOptimizationDisabled;
                    Fluttertoast.showToast(
                        msg:
                            "Manufacturer Battery optimization is ${!isManBatteryOptimizationDisabled ? "Enabled" : "Disabled"}");
                  }),
              MaterialButton(
                  child: Text("Are All Battery optimizations disabled"),
                  onPressed: () async {
                    bool isAllBatteryOptimizationDisabled =
                        await FlutterBatteryOptimize
                            .isAllBatteryOptimizationDisabled;
                    Fluttertoast.showToast(
                        msg:
                            "All Battery optimizations are disabled ${isAllBatteryOptimizationDisabled ? "True" : "False"}");
                  }),
              MaterialButton(
                  child: Text("Enable Auto Start"),
                  onPressed: () {
                    FlutterBatteryOptimize.showEnableAutoStartSettings(
                        "Enable Auto Start",
                        "Follow the steps and enable the auto start of this app");
                  }),
              MaterialButton(
                  child: Text("Disable Battery Optimizations"),
                  onPressed: () {
                    FlutterBatteryOptimize.showFlutterBatteryOptimizeSettings();
                  }),
              MaterialButton(
                  child: Text("Disable Manufacturer Battery Optimizations"),
                  onPressed: () {
                    FlutterBatteryOptimize
                        .showDisableManufacturerBatteryOptimizationSettings(
                            "Your device has additional battery optimization",
                            "Follow the steps and disable the optimizations to allow smooth functioning of this app");
                  }),
              MaterialButton(
                  child: Text("Disable all Optimizations"),
                  onPressed: () {
                    FlutterBatteryOptimize.showDisableAllOptimizationsSettings(
                        "Enable Auto Start",
                        "Follow the steps and enable the auto start of this app",
                        "Your device has additional battery optimization",
                        "Follow the steps and disable the optimizations to allow smooth functioning of this app");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
