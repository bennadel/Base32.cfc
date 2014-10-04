
# Base32.cfc - Base32 Encoding And Decoding In ColdFusion

by [Ben Nadel][bennadel] (on [Google+][googleplus])

While ColdFusion has native methods for converting to Base64 and Hex, it doesn't have 
a way to encode Base32 values. As such, I've created this ColdFusion component that has
static methods for encoding and decoding values using the Base32 alphabet.

* decode( String ) :: String
* decodeBinary( Binary ) :: Binary
* encode( String ) :: String
* encodeBinary( Binary ) :: Binary

__Note__: If you use the string-base encoding functions, the strings are currently assumed
to be in UTF-8 encoding.


[bennadel]: http://www.bennadel.com
[googleplus]: https://plus.google.com/108976367067760160494?rel=author
