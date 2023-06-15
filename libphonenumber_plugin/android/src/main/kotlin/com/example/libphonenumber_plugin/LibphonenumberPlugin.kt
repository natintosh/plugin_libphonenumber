package com.example.libphonenumber_plugin

import com.google.i18n.phonenumbers.NumberParseException
import com.google.i18n.phonenumbers.PhoneNumberUtil
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat
import com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberType
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.FlutterPlugin.FlutterPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import java.util.*

/**
 * LibphonenumberPlugin
 */
class LibphonenumberPlugin : FlutterPlugin, MethodCallHandler {
  /// The MethodChannel that will the communication between Flutter and native Android
  ///
  /// This local reference serves to register the plugin with the Flutter Engine and unregister it
  /// when the Flutter Engine is detached from the Activity
  private var channel: MethodChannel? = null
  override fun onAttachedToEngine(flutterPluginBinding: FlutterPluginBinding) {
    channel = MethodChannel(flutterPluginBinding.binaryMessenger, "plugin.libphonenumber")
    channel!!.setMethodCallHandler(this)
  }

  override fun onDetachedFromEngine(binding: FlutterPluginBinding) {
    channel!!.setMethodCallHandler(null)
  }

  override fun onMethodCall(call: MethodCall, result: MethodChannel.Result) {
    when (call.method) {
      "isValidPhoneNumber" -> handleIsValidPhoneNumber(call, result)
      "normalizePhoneNumber" -> handleNormalizePhoneNumber(call, result)
      "getRegionInfo" -> handleGetRegionInfo(call, result)
      "getNumberType" -> handleGetNumberType(call, result)
      "formatAsYouType" -> handleFormatAsYouType(call, result)
      "getAllCountries" -> handleGetAllCountries(result)
      "getFormattedExampleNumber" -> handleGetFormattedExampleNumber(call, result)
      else -> result.notImplemented()
    }
  }

  private fun handleIsValidPhoneNumber(call: MethodCall, result: MethodChannel.Result) {
    val phoneNumber = call.argument<String>("phoneNumber")
    val isoCode = call.argument<String>("isoCode")
    try {
      val p = phoneUtil.parse(phoneNumber, isoCode)
      result.success(phoneUtil.isValidNumber(p))
    } catch (e: NumberParseException) {
      result.error("NumberParseException", e.message, null)
    }
  }

  private fun handleNormalizePhoneNumber(call: MethodCall, result: MethodChannel.Result) {
    val phoneNumber = call.argument<String>("phoneNumber")
    val isoCode = call.argument<String>("isoCode")
    val format = call.argument<Int>("format")

    val phoneNumberFormat = getPhoneNumberFormatForIndex(format ?: 0)

    try {
      val p = phoneUtil.parse(phoneNumber, isoCode)
      val normalized = phoneUtil.format(p, phoneNumberFormat)
      result.success(normalized)
    } catch (e: NumberParseException) {
      result.error("NumberParseException", e.message, null)
    }
  }

  private fun handleGetRegionInfo(call: MethodCall, result: MethodChannel.Result) {
    val phoneNumber = call.argument<String>("phoneNumber")
    val isoCode = call.argument<String>("isoCode")
    try {
      val p = phoneUtil.parse(phoneNumber, isoCode)
      val regionCode = phoneUtil.getRegionCodeForNumber(p)
      val countryCode = p.countryCode.toString()
      val formattedNumber = phoneUtil.format(p, PhoneNumberFormat.NATIONAL)
      val resultMap: MutableMap<String, String> = HashMap()
      resultMap["isoCode"] = regionCode
      resultMap["regionCode"] = countryCode
      resultMap["formattedPhoneNumber"] = formattedNumber
      result.success(resultMap)
    } catch (e: NumberParseException) {
      result.error("NumberParseException", e.message, null)
    }
  }

  private fun handleGetNumberType(call: MethodCall, result: MethodChannel.Result) {
    val phoneNumber = call.argument<String>("phoneNumber")
    val isoCode = call.argument<String>("isoCode")
    try {
      val p = phoneUtil.parse(phoneNumber, isoCode)
      val t = phoneUtil.getNumberType(p)
      val index = getIndexForPhoneNumberType(t)
      result.success(index)
    } catch (e: NumberParseException) {
      result.error("NumberParseException", e.message, null)
    }
  }

  private fun handleFormatAsYouType(call: MethodCall, result: MethodChannel.Result) {
    val phoneNumber = call.argument<String>("phoneNumber")
    val isoCode = call.argument<String>("isoCode")
    val asYouTypeFormatter = phoneUtil.getAsYouTypeFormatter(isoCode)
    var data: String? = null
    for (i in 0 until (phoneNumber?.length ?: 0)) {
      data = asYouTypeFormatter.inputDigit(phoneNumber!![i])
    }
    result.success(data)
  }

  private fun handleGetAllCountries(result: MethodChannel.Result) {
    val allCountries: List<String> = ArrayList(phoneUtil.supportedRegions).sorted()
    result.success(allCountries)
  }

  private fun handleGetFormattedExampleNumber(call: MethodCall, result: MethodChannel.Result) {
    val isoCode = call.argument<String>("isoCode")
    val type = call.argument<Int>("type")!!
    val format = call.argument<Int>("format")!!
    val phoneNumberType = getPhoneNumberTypeForIndex(type)
    val phoneNumberFormat = getPhoneNumberFormatForIndex(format)
    val exampleNumber = phoneUtil.getExampleNumberForType(isoCode, phoneNumberType)
    val formattedPhoneNumber = phoneUtil.format(exampleNumber, phoneNumberFormat)
    result.success(formattedPhoneNumber)
  }

  private fun getPhoneNumberFormatForIndex(index: Int): PhoneNumberFormat {
    return when (index) {
      1 -> PhoneNumberFormat.INTERNATIONAL
      2 -> PhoneNumberFormat.NATIONAL
      3 -> PhoneNumberFormat.RFC3966
      0 -> PhoneNumberFormat.E164
      else -> PhoneNumberFormat.E164
    }
  }

  private fun getPhoneNumberTypeForIndex(index: Int): PhoneNumberType {
    return when (index) {
      0 -> PhoneNumberType.FIXED_LINE
      1 -> PhoneNumberType.MOBILE
      2 -> PhoneNumberType.FIXED_LINE_OR_MOBILE
      3 -> PhoneNumberType.TOLL_FREE
      4 -> PhoneNumberType.PREMIUM_RATE
      5 -> PhoneNumberType.SHARED_COST
      6 -> PhoneNumberType.VOIP
      7 -> PhoneNumberType.PERSONAL_NUMBER
      8 -> PhoneNumberType.PAGER
      9 -> PhoneNumberType.UAN
      10 -> PhoneNumberType.VOICEMAIL
      else -> PhoneNumberType.UNKNOWN
    }
  }

  private fun getIndexForPhoneNumberType(type: PhoneNumberType): Int {
    return when (type) {
      PhoneNumberType.FIXED_LINE -> 0
      PhoneNumberType.MOBILE -> 1
      PhoneNumberType.FIXED_LINE_OR_MOBILE -> 2
      PhoneNumberType.TOLL_FREE -> 3
      PhoneNumberType.PREMIUM_RATE -> 4
      PhoneNumberType.SHARED_COST -> 5
      PhoneNumberType.VOIP -> 6
      PhoneNumberType.PERSONAL_NUMBER -> 7
      PhoneNumberType.PAGER -> 8
      PhoneNumberType.UAN -> 9
      PhoneNumberType.VOICEMAIL -> 10
      else -> -1
    }
  }

  companion object {
    private val phoneUtil = PhoneNumberUtil.getInstance()
  }
}