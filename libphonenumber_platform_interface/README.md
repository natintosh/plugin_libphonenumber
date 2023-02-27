# libphonenumber_platform_interface

Provides platform interface, method channel with utils classes and enums for libphonenumber package
similar to that of [libphonenumber](https://pub.dev/packages/libphonenumber) package.

| METHODS                   | RETURN TYPE | PARAMETERS                                                     |
|---------------------------|-------------|----------------------------------------------------------------|
| isValidNumber             | bool        | phoneNumber, IsoCode (String)                                  |
| normalizePhoneNumber      | String      | ...                                                            |
| getRegionInfo             | Map         | ...                                                            |
| getNumberType             | int         | ...                                                            |
| formatAsYouType           | String      | same as above                                                  |
| getAllCountries           | List        | No arguments                                                   |
| getFormattedExampleNumber | String      | String isoCode, PhoneNumberType type, PhoneNumberFormat format |
