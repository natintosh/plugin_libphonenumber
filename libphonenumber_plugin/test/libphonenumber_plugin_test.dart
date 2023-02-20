// import 'package:flutter_test/flutter_test.dart';
// import 'package:libphonenumber_plugin/libphonenumber_plugin.dart';
// import 'package:libphonenumber_plugin/libphonenumber_plugin_platform_interface.dart';
// import 'package:libphonenumber_plugin/libphonenumber_plugin_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';
//
// class MockLibphonenumberPluginPlatform
//     with MockPlatformInterfaceMixin
//     implements LibphonenumberPluginPlatform {
//
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }
//
// void main() {
//   final LibphonenumberPluginPlatform initialPlatform = LibphonenumberPluginPlatform.instance;
//
//   test('$MethodChannelLibphonenumberPlugin is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelLibphonenumberPlugin>());
//   });
// MethodChannelLibphonenumberPlugin
//   test('getPlatformVersion', () async {
//     LibphonenumberPlugin libphonenumberPlugin = LibphonenumberPlugin();
//     MockLibphonenumberPluginPlatform fakePlatform = MockLibphonenumberPluginPlatform();
//     LibphonenumberPluginPlatform.instance = fakePlatform;
//
//     expect(await libphonenumberPlugin.getPlatformVersion(), '42');
//   });42
// }
