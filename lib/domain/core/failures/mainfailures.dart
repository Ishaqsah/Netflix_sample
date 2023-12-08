import 'package:freezed_annotation/freezed_annotation.dart';
part 'mainfailures.freezed.dart';

@freezed
class MainFailure with _$MainFailure {
  const factory MainFailure.clientfailure() = _clientfailure;
  const factory MainFailure.serverfailure() = _serverfailure;
}
