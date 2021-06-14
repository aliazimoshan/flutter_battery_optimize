// import 'package:flutter/services.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:flutter_battery_optimize/flutter_battery_optimize.dart';

// void main() {
//   const MethodChannel channel = MethodChannel('flutter_battery_optimize');

//   TestWidgetsFlutterBinding.ensureInitialized();

//   setUp(() {
//     channel.setMockMethodCallHandler((MethodCall methodCall) async {
//       return '42';
//     });
//   });

//   tearDown(() {
//     channel.setMockMethodCallHandler(null);
//   });

//   test('getPlatformVersion', () async {
//     expect(await FlutterBatteryOptimize.platformVersion, '42');
//   });
// }
