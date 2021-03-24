package com.example.libphonenumber_plugin;

import androidx.annotation.NonNull;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.MethodChannel.MethodCallHandler;
import io.flutter.plugin.common.MethodChannel.Result;

/**
 * LibphonenumberPlugin
 */
public class LibphonenumberPlugin implements FlutterPlugin, MethodCallHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private MethodChannel channel;

    private com.codeheadlabs.libphonenumber.LibphonenumberPlugin libphonenumberPlugin;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "plugin.libphonenumber");
        channel.setMethodCallHandler(this);

        libphonenumberPlugin = new com.codeheadlabs.libphonenumber.LibphonenumberPlugin();
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        switch (call.method) {
            case "isValidPhoneNumber":
            case "getNameForNumber":
            case "normalizePhoneNumber":
            case "getRegionInfo":
            case "getNumberType":
            case "formatAsYouType":
                onDirectMethodCall(call, result);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    private void onDirectMethodCall(MethodCall call, Result result) {
        String phoneNumber = call.argument("phoneNumber");
        String isoCode = call.argument("isoCode");

        Map<Object, Object> arguments = new HashMap<>();
        arguments.put("phone_number", phoneNumber);
        arguments.put("iso_code", isoCode);


        final MethodCall methodCall = new MethodCall(call.method, arguments);

        libphonenumberPlugin.onMethodCall(methodCall, result);
    }
}
