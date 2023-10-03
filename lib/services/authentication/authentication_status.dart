/// Current AuthenticationStatus
///
/// [unknown] means that the status is currently unknown. This can be the case,
/// when the initialization is not done, or the user actively tries in at the moment.
///
/// [authenticated] means that the user is currently authenticated and an access
/// token is present.
///
/// [unauthenticated] means that the user is currently unauthenticated and needs
/// to login before accessing any Resource.
enum AuthenticationStatus {
  unknown,
  authenticated,
  unauthenticated,
}
