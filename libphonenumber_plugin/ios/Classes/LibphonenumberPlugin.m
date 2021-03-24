#import "LibphonenumberPlugin.h"
#if __has_include(<libphonenumber_plugin/libphonenumber_plugin-Swift.h>)
#import <libphonenumber_plugin/libphonenumber_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "libphonenumber_plugin-Swift.h"
#endif

@implementation FLTLibphonenumberPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLibphonenumberPlugin registerWithRegistrar:registrar];
}
@end
