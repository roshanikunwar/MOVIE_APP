part of 'logout_cubit.dart';

@freezed
class LogoutState with _$LogoutState {
  const factory LogoutState.initial() = _Initial;
  const factory LogoutState.processing() = _Processing;
  const factory LogoutState.success() = _Success;
  const factory LogoutState.error() = _LogoutError;
}
