package com.example.example2

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANEL = "MyChannel";

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine);

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANEL).setMethodCallHandler { call, result ->
            if(call.method == "getDataFromNative"){
                // Perform platform-specific operations and obtain the result
                val module = MyModule();
                val data = module.getDataFromNative("Hello There from Native Modules 🔥");
                // Send the result back to Flutter
                result.success(data);
            }else {
                result.notImplemented()
            }
        }
    }
}
