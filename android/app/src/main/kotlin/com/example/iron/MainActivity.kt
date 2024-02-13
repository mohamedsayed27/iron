package com.example.iron

import android.content.pm.PackageManager
import android.os.Build
import androidx.annotation.NonNull
import androidx.core.content.ContextCompat
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant


class MainActivity: FlutterActivity() {
    private val channel = "mohamed.sayed/detectNFCSupport"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        GeneratedPluginRegistrant.registerWith(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channel).setMethodCallHandler { call, result ->
            when (call.method) {
                "isNfcSupported" -> isNfcSupported(result)
                else -> result.notImplemented()
            }
        }
    }

    private fun isNfcSupported(result: MethodChannel.Result) {
        val isSupported = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            packageManager.hasSystemFeature(PackageManager.FEATURE_NFC) &&
                    ContextCompat.checkSelfPermission(
                        this,
                        "android.permission.NFC"
                    ) == PackageManager.PERMISSION_GRANTED
        } else {
            false
        }

        result.success(isSupported)
    }
}
