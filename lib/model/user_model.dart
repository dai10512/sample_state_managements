import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'user_model.freezed.dart';
part 'user_model.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class User with _$User {
  // コンストラクタを記述
  const factory User({
    required String name,
    required int age,
    required String? image,
  }) = _User;

  // コンストラクタを記述
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
