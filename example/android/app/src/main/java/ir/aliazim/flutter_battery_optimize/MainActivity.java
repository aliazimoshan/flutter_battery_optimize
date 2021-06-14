package ir.aliazim.flutter_battery_optimize_example;

import android.os.Bundle;

import androidx.annotation.NonNull;

import ir.aliazim.flutter_battery_optimize.FlutterBatteryOptimizePlugin;
//import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.GeneratedPluginRegistrant;

import io.flutter.app.FlutterActivity;

public class MainActivity extends FlutterActivity {

  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    GeneratedPluginRegistrant.registerWith(this);
  }



}
