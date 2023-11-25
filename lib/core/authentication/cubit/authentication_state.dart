part of 'authentication_cubit.dart';

@immutable
sealed class AuthenticationState {}

final class AuthenticationInitial extends AuthenticationState {}

final class UnAuthenticated extends AuthenticationState {}

final class Authenticated extends AuthenticationState {}
