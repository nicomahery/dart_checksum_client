
import 'dart:io';

import 'package:crclib/catalog.dart';
import 'package:crclib/crclib.dart';

/// Returns true if the calculated CRC32 checksum for the file equals the CRC32 checksum passed in [refChecksum]
Future<bool> _calculateAndVerifyChecksumForFile(File file, num refChecksum) async {
  CrcValue checksumValue = await file.openRead().transform(Crc32Xz()).single;
  print('Calculate Checksum for file: ${file.path} checksum:${checksumValue.toString()} Api Checksum: $refChecksum');
  return checksumValue == refChecksum;
}

/// Returns the calculated CRC32 checksum for the file located in [filepath]
Future<num> calculateCRC32XZChecksum(String filepath) async {
  File file = File(filepath);
  CrcValue checksumValue = await file.openRead().transform(Crc32Xz()).single;
  //print('Calculate Checksum for file: ${file.path} checksum:${checksumValue.toString()} Api Checksum: $refChecksum');
  return num.parse(checksumValue.toString());
}

