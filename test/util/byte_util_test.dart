import 'dart:typed_data';

import 'package:libsignalprotocoldart/src/util/ByteUtil.dart';
import 'package:test/test.dart';

void main() {
  test('ByteUtil.combime() combile multi Uintlist8 into 1', () {
    var first = Uint8List.fromList([1]);
    var second = Uint8List.fromList([2, 3]);
    var third = Uint8List.fromList([4, 5]);
    var other = Uint8List.fromList([1, 2, 3, 4, 5]);
    expect(ByteUtil.combine([first, second, third]), equals(other));
  });
  
  test('ByteUtil.shortToByteArray() convert short to UintList8', () {
    // TODO
    var value = 132;
    expect(ByteUtil.shortToByteArray(value), equals(Uint8List.fromList([0, 132])));
  });

  test('ByteUtil.split() splits the string to three length', () {
    var input = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    var first = Uint8List.fromList([1]);
    var second = Uint8List.fromList([2, 3]);
    var third = Uint8List.fromList([4, 5, 6, 7, 8, 9]);
    expect(ByteUtil.split(input, 1, 2, 6), equals([first, second, third]));
  });

  test('ByteUtil.splitTwo() splits the string to two length', () {
    var input = Uint8List.fromList([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    var first = Uint8List.fromList([1]);
    var second = Uint8List.fromList([2, 3, 4, 5, 6, 7]);
    expect(ByteUtil.splitTwo(input, 1, 6), equals([first, second]));
  });

  test('String.trim() removes surrounding whitespace', () {
    var string = '  foo ';
    expect(string.trim(), equals('foo'));
  });
}
