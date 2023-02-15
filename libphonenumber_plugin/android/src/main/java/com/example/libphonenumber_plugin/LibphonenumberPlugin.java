package com.example.libphonenumber_plugin;

import androidx.annotation.NonNull;

import com.google.i18n.phonenumbers.AsYouTypeFormatter;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat;
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType;
import com.google.i18n.phonenumbers.Phonenumber.PhoneNumber;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

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

    private static final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding flutterPluginBinding) {
        channel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "plugin.libphonenumber");
        channel.setMethodCallHandler(this);
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }

    @Override
    public void onMethodCall(@NonNull MethodCall call, @NonNull Result result) {
        switch (call.method) {
            case "isValidPhoneNumber":
                handleIsValidPhoneNumber(call, result);
                break;
            case "normalizePhoneNumber":
                handleNormalizePhoneNumber(call, result);
                break;
            case "getRegionInfo":
                handleGetRegionInfo(call, result);
                break;
            case "getNumberType":
                handleGetNumberType(call, result);
                break;
            case "formatAsYouType":
                handleFormatAsYouType(call, result);
                break;
            case "getAllCountries":
                handleGetAllCountries(result);
                break;
            case "getFormattedExampleNumber":
                handleGetFormattedExampleNumber(call, result);
                break;
            default:
                result.notImplemented();
                break;
        }
    }

    private void handleIsValidPhoneNumber(MethodCall call, Result result) {
        String phoneNumber = call.argument("phoneNumber");
        String isoCode = call.argument("isoCode");

        try {
            PhoneNumber p = phoneUtil.parse(phoneNumber, isoCode);
            result.success(phoneUtil.isValidNumber(p));
        } catch (NumberParseException e) {
            result.error("NumberParseException", e.getMessage(), null);
        }
    }

    private void handleNormalizePhoneNumber(MethodCall call, Result result) {
        String phoneNumber = call.argument("phoneNumber");
        String isoCode = call.argument("isoCode");

        try {
            PhoneNumber p = phoneUtil.parse(phoneNumber, isoCode);
            final String normalized = phoneUtil.format(p, PhoneNumberUtil.PhoneNumberFormat.E164);
            result.success(normalized);
        } catch (NumberParseException e) {
            result.error("NumberParseException", e.getMessage(), null);
        }
    }

    private void handleGetRegionInfo(MethodCall call, Result result) {
        String phoneNumber = call.argument("phoneNumber");
        String isoCode = call.argument("isoCode");

        try {
            PhoneNumber p = phoneUtil.parse(phoneNumber, isoCode);
            String regionCode = phoneUtil.getRegionCodeForNumber(p);
            String countryCode = String.valueOf(p.getCountryCode());
            String formattedNumber = phoneUtil.format(p, PhoneNumberUtil.PhoneNumberFormat.NATIONAL);

            Map<String, String> resultMap = new HashMap<>();
            resultMap.put("isoCode", regionCode);
            resultMap.put("regionCode", countryCode);
            resultMap.put("formattedPhoneNumber", formattedNumber);
            result.success(resultMap);
        } catch (NumberParseException e) {
            result.error("NumberParseException", e.getMessage(), null);
        }
    }

    private void handleGetNumberType(MethodCall call, Result result) {
        String phoneNumber = call.argument("phoneNumber");
        String isoCode = call.argument("isoCode");
        try {
            PhoneNumber p = phoneUtil.parse(phoneNumber, isoCode);
            PhoneNumberType t = phoneUtil.getNumberType(p);

            int index = getIndexForPhoneNumberType(t);
            result.success(index);
        } catch (NumberParseException e) {
            result.error("NumberParseException", e.getMessage(), null);
        }
    }

    private void handleFormatAsYouType(MethodCall call, Result result) {
        String phoneNumber = call.argument("phoneNumber");
        String isoCode = call.argument("isoCode");

        AsYouTypeFormatter asYouTypeFormatter = phoneUtil.getAsYouTypeFormatter(isoCode);
        String data = null;
        for (int i = 0; i < (phoneNumber != null ? phoneNumber.length() : 0); i++) {
            data = asYouTypeFormatter.inputDigit(phoneNumber.charAt(i));
        }

        result.success(data);
    }

    private void handleGetAllCountries(Result result) {
        final List<String> allCountries = new ArrayList<>(phoneUtil.getSupportedRegions());
        Collections.sort(allCountries);

        result.success(allCountries);
    }

    private void handleGetFormattedExampleNumber(MethodCall call, Result result) {
        String isoCode = call.argument("isoCode");
        int type = call.argument("type");
        int format = call.argument("format");

        PhoneNumberType phoneNumberType = getPhoneNumberTypeForIndex(type);
        PhoneNumberFormat phoneNumberFormat = getPhoneNumberFormatForIndex(format);

        PhoneNumber exampleNumber = phoneUtil.getExampleNumberForType(isoCode, phoneNumberType);
        String formattedPhoneNumber = phoneUtil.format(exampleNumber, phoneNumberFormat);

        result.success(formattedPhoneNumber);
    }

    private PhoneNumberFormat getPhoneNumberFormatForIndex(int index) {
        switch (index) {
            case 1:
                return PhoneNumberFormat.INTERNATIONAL;
            case 2:
                return PhoneNumberFormat.NATIONAL;
            case 3:
                return PhoneNumberFormat.RFC3966;
            case 0:
            default:
                return PhoneNumberFormat.E164;
        }
    }

    private PhoneNumberType getPhoneNumberTypeForIndex(int index) {
        switch (index) {
            case 0:
                return PhoneNumberType.FIXED_LINE;
            case 1:
                return PhoneNumberType.MOBILE;
            case 2:
                return PhoneNumberType.FIXED_LINE_OR_MOBILE;
            case 3:
                return PhoneNumberType.TOLL_FREE;
            case 4:
                return PhoneNumberType.PREMIUM_RATE;
            case 5:
                return PhoneNumberType.SHARED_COST;
            case 6:
                return PhoneNumberType.VOIP;
            case 7:
                return PhoneNumberType.PERSONAL_NUMBER;
            case 8:
                return PhoneNumberType.PAGER;
            case 9:
                return PhoneNumberType.UAN;
            case 10:
                return PhoneNumberType.VOICEMAIL;
            default:
                return PhoneNumberType.UNKNOWN;
        }
    }

    private int getIndexForPhoneNumberType(PhoneNumberType type) {
        switch (type) {
            case FIXED_LINE:
                return 0;
            case MOBILE:
                return 1;
            case FIXED_LINE_OR_MOBILE:
                return 2;
            case TOLL_FREE:
                return 3;
            case PREMIUM_RATE:
                return 4;
            case SHARED_COST:
                return 5;
            case VOIP:
                return 6;
            case PERSONAL_NUMBER:
                return 7;
            case PAGER:
                return 8;
            case UAN:
                return 9;
            case VOICEMAIL:
                return 10;
            default:
                return -1;
        }
    }
}
