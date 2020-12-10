# libphonenumber_platform_interface

  Provides platform interface, method channel with utils classes and enums for libphonenumber package similar to that of [libphonenumber](https://pub.dev/packages/libphonenumber) package.


  |------------------------|-------------|-------------------------------|
  | METHODS                | RETURN TYPE | PARAMETERS                    |
  |------------------------|-------------|-------------------------------|
  | getNameForNumber       | String      | phoneNumber, IsoCode (String) |
  | isValidNumber          | bool        | ...                           |
  | normalizePhoneNumber   | String      | ...                           |
  | getRegionInfo          | Map         | ...                           |
  | getNumberType          | int         | ...                           |
  | formatAsYouType        | String      | same as above                 |
  |------------------------|-------------|-------------------------------|
