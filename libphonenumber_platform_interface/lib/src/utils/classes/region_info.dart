/// [RegionInfo] contains regional info about a phone number
class RegionInfo {
  /// [regionPrefix] is the region's country code e.g +234, +1 etc.
  String? regionPrefix;

  /// [isoCode] is the ISO 3166 code for entry of the region
  String? isoCode;

  /// [formattedPhoneNumber] is phone number formatted with national format
  String? formattedPhoneNumber;

  RegionInfo({this.regionPrefix, this.isoCode, this.formattedPhoneNumber});

  /// Coverts [json] of Map<String, dynamic> into [RegionInfo]
  RegionInfo.fromJson(Map<String, dynamic>? json) {
    regionPrefix = json?['regionCode'];
    isoCode = json?['isoCode'];
    formattedPhoneNumber = json?['formattedPhoneNumber'];
  }

  /// Coverts [RegionInfo] into Map<String, dynamic>
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['regionCode'] = regionPrefix;
    data['isoCode'] = isoCode;
    data['formattedPhoneNumber'] = formattedPhoneNumber;
    return data;
  }

  /// Returns [String] of [RegionInfo] properties
  @override
  String toString() {
    return '[RegionInfo prefix=$regionPrefix, iso=$isoCode, formatted=$formattedPhoneNumber]';
  }
}
