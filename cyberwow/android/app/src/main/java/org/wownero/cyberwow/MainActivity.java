package org.wownero.cyberwow;

import android.os.Bundle;
import android.graphics.Color;
import io.flutter.app.FlutterActivity;
import io.flutter.plugins.GeneratedPluginRegistrant;

public class MainActivity extends FlutterActivity {
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    getWindow().setNavigationBarColor(Color.BLACK);
    GeneratedPluginRegistrant.registerWith(this);
  }
}
