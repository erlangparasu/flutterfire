// Copyright 2022, the Chromium project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: one_member_abstracts

import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(
  PigeonOptions(
    dartOut: 'lib/src/pigeon/messages.pigeon.dart',
    // We export in the lib folder to expose the class to other packages.
    dartTestOut: 'test/pigeon/test_api.dart',
    javaOut:
        '../firebase_auth/android/src/main/java/io/flutter/plugins/firebase/auth/GeneratedAndroidFirebaseAuth.java',
    javaOptions: JavaOptions(
      package: 'io.flutter.plugins.firebase.auth',
      className: 'GeneratedAndroidFirebaseAuth',
    ),
    objcHeaderOut: '../firebase_auth/ios/Classes/Public/messages.g.h',
    objcSourceOut: '../firebase_auth/ios/Classes/messages.g.m',
  ),
)
class PigeonMultiFactorSession {
  const PigeonMultiFactorSession({
    required this.id,
  });

  final String id;
}

class PigeonPhoneMultiFactorAssertion {
  const PigeonPhoneMultiFactorAssertion({
    required this.verificationId,
    required this.verificationCode,
  });

  final String verificationId;
  final String verificationCode;
}

class PigeonMultiFactorInfo {
  const PigeonMultiFactorInfo({
    this.displayName,
    required this.enrollmentTimestamp,
    this.factorId,
    required this.uid,
    required this.phoneNumber,
  });

  final String? displayName;
  final double enrollmentTimestamp;
  final String? factorId;
  final String uid;
  final String? phoneNumber;
}

class PigeonFirebaseApp {
  const PigeonFirebaseApp({
    required this.appName,
    required this.tenantId,
  });

  final String appName;
  final String? tenantId;
}

/// The type of operation that generated the action code from calling
/// [checkActionCode].
enum ActionCodeInfoOperation {
  /// Unknown operation.
  unknown,

  /// Password reset code generated via [sendPasswordResetEmail].
  passwordReset,

  /// Email verification code generated via [User.sendEmailVerification].
  verifyEmail,

  /// Email change revocation code generated via [User.updateEmail].
  recoverEmail,

  /// Email sign in code generated via [sendSignInLinkToEmail].
  emailSignIn,

  /// Verify and change email code generated via [User.verifyBeforeUpdateEmail].
  verifyAndChangeEmail,

  /// Action code for reverting second factor addition.
  revertSecondFactorAddition,
}

class PigeonActionCodeInfo {
  const PigeonActionCodeInfo({
    required this.operation,
    required this.data,
  });

  final ActionCodeInfoOperation operation;
  final PigeonActionCodeInfoData data;
}

class PigeonActionCodeInfoData {
  const PigeonActionCodeInfoData({
    this.email,
    this.previousEmail,
  });

  final String? email;
  final String? previousEmail;
}

class PigeonUserCredential {
  const PigeonUserCredential({
    required this.user,
    required this.additionalUserInfo,
    required this.credential,
  });

  final PigeonUserDetails? user;
  final PigeonAdditionalUserInfo? additionalUserInfo;
  final PigeonAuthCredential? credential;
}

class PigeonAdditionalUserInfo {
  const PigeonAdditionalUserInfo({
    required this.isNewUser,
    required this.providerId,
    required this.username,
    this.profile,
  });

  final bool isNewUser;
  final String? providerId;
  final String? username;
  final Map<String?, Object?>? profile;
}

class PigeonAuthCredential {
  const PigeonAuthCredential({
    required this.providerId,
    required this.signInMethod,
    required this.nativeId,
    required this.accessToken,
  });

  final String providerId;
  final String signInMethod;
  final int nativeId;
  final String? accessToken;
}

class PigeonUserInfo {
  const PigeonUserInfo({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.photoUrl,
    required this.phoneNumber,
    required this.isAnonymous,
    required this.isEmailVerified,
    required this.tenantId,
    required this.providerId,
    required this.creationTimestamp,
    required this.lastSignInTimestamp,
    required this.refreshToken,
  });

  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;
  final String? phoneNumber;
  final bool isAnonymous;
  final bool isEmailVerified;
  final String? providerId;
  final String? tenantId;
  final String? refreshToken;
  final int? creationTimestamp;
  final int? lastSignInTimestamp;
}

class PigeonUserDetails {
  const PigeonUserDetails({
    required this.userInfo,
    required this.providerData,
  });

  final PigeonUserInfo userInfo;
  final List<PigeonUserInfo?> providerData;
}

class PigeonAuthCredentialInput {
  const PigeonAuthCredentialInput({
    required this.providerId,
    required this.signInMethod,
    required this.token,
    required this.accessToken,
  });

  final String providerId;
  final String signInMethod;
  final String? token;
  final String? accessToken;
}

class PigeonActionCodeSettings {
  const PigeonActionCodeSettings({
    required this.url,
    required this.dynamicLinkDomain,
    required this.handleCodeInApp,
    required this.iOSBundleId,
    required this.androidPackageName,
    required this.androidInstallApp,
    required this.androidMinimumVersion,
  });

  final String url;
  final String? dynamicLinkDomain;
  final bool handleCodeInApp;
  final String? iOSBundleId;
  final String? androidPackageName;
  final bool androidInstallApp;
  final String? androidMinimumVersion;
}

class PigeonFirebaseAuthSettings {
  const PigeonFirebaseAuthSettings({
    required this.appVerificationDisabledForTesting,
    required this.userAccessGroup,
    required this.phoneNumber,
    required this.smsCode,
    required this.forceRecaptchaFlow,
  });

  final bool appVerificationDisabledForTesting;
  final String? userAccessGroup;
  final String? phoneNumber;
  final String? smsCode;
  final bool? forceRecaptchaFlow;
}

class PigeonSignInProvider {
  const PigeonSignInProvider({
    required this.providerId,
    required this.scopes,
    required this.customParameters,
  });

  final String providerId;
  final List<String?>? scopes;
  final Map<String?, String?>? customParameters;
}

class PigeonVerifyPhoneNumberRequest {
  const PigeonVerifyPhoneNumberRequest({
    required this.phoneNumber,
    required this.timeout,
    required this.forceResendingToken,
    required this.autoRetrievedSmsCodeForTesting,
    required this.multiFactorInfoId,
    required this.multiFactorSessionId,
  });

  final String? phoneNumber;
  final int timeout;
  final int? forceResendingToken;
  final String? autoRetrievedSmsCodeForTesting;
  final String? multiFactorInfoId;
  final String? multiFactorSessionId;
}

@HostApi(dartHostTestHandler: 'TestFirebaseAuthHostApi')
abstract class FirebaseAuthHostApi {
  @async
  String registerIdTokenListener(
    PigeonFirebaseApp app,
  );

  @async
  String registerAuthStateListener(
    PigeonFirebaseApp app,
  );

  @async
  void useEmulator(
    PigeonFirebaseApp app,
    String host,
    int port,
  );

  @async
  void applyActionCode(
    PigeonFirebaseApp app,
    String code,
  );

  @async
  PigeonActionCodeInfo checkActionCode(
    PigeonFirebaseApp app,
    String code,
  );

  @async
  void confirmPasswordReset(
    PigeonFirebaseApp app,
    String code,
    String newPassword,
  );

  @async
  PigeonUserCredential createUserWithEmailAndPassword(
    PigeonFirebaseApp app,
    String email,
    String password,
  );

  @async
  PigeonUserCredential signInAnonymously(
    PigeonFirebaseApp app,
  );

  @async
  PigeonUserCredential signInWithCredential(
    PigeonFirebaseApp app,
    Map<String, Object> input,
  );

  @async
  PigeonUserCredential signInWithCustomToken(
    PigeonFirebaseApp app,
    String token,
  );

  @async
  PigeonUserCredential signInWithEmailAndPassword(
    PigeonFirebaseApp app,
    String email,
    String password,
  );

  @async
  PigeonUserCredential signInWithEmailLink(
    PigeonFirebaseApp app,
    String email,
    String emailLink,
  );

  @async
  PigeonUserCredential signInWithProvider(
    PigeonFirebaseApp app,
    PigeonSignInProvider signInProvider,
  );

  @async
  void signOut(
    PigeonFirebaseApp app,
  );

  @async
  List<String> fetchSignInMethodsForEmail(
    PigeonFirebaseApp app,
    String email,
  );

  @async
  void sendPasswordResetEmail(
    PigeonFirebaseApp app,
    String email,
    PigeonActionCodeSettings? actionCodeSettings,
  );

  @async
  void sendSignInLinkToEmail(
    PigeonFirebaseApp app,
    String email,
    PigeonActionCodeSettings actionCodeSettings,
  );

  @async
  String setLanguageCode(
    PigeonFirebaseApp app,
    String? languageCode,
  );

  @async
  void setSettings(
    PigeonFirebaseApp app,
    PigeonFirebaseAuthSettings settings,
  );

  @async
  String verifyPasswordResetCode(
    PigeonFirebaseApp app,
    String code,
  );

  @async
  String verifyPhoneNumber(
    PigeonFirebaseApp app,
    PigeonVerifyPhoneNumberRequest request,
  );
}

class PigeonIdTokenResult {
  const PigeonIdTokenResult({
    required this.token,
    required this.expirationTimestamp,
    required this.authTimestamp,
    required this.issuedAtTimestamp,
    required this.signInProvider,
    required this.claims,
    required this.signInSecondFactor,
  });

  final String? token;
  final int? expirationTimestamp;
  final int? authTimestamp;
  final int? issuedAtTimestamp;
  final String? signInProvider;
  final Map<String?, Object?>? claims;
  final String? signInSecondFactor;
}

@HostApi(dartHostTestHandler: 'TestFirebaseAuthUserHostApi')
abstract class FirebaseAuthUserHostApi {
  @async
  void delete(
    PigeonFirebaseApp app,
  );

  @async
  PigeonIdTokenResult getIdToken(
    PigeonFirebaseApp app,
    bool forceRefresh,
  );
}

@HostApi(dartHostTestHandler: 'TestMultiFactorUserHostApi')
abstract class MultiFactorUserHostApi {
  @async
  void enrollPhone(
    String appName,
    PigeonPhoneMultiFactorAssertion assertion,
    String? displayName,
  );

  @async
  PigeonMultiFactorSession getSession(String appName);

  @async
  void unenroll(
    String appName,
    String? factorUid,
  );

  @async
  List<PigeonMultiFactorInfo> getEnrolledFactors(String appName);
}

@HostApi(dartHostTestHandler: 'TestMultiFactoResolverHostApi')
abstract class MultiFactoResolverHostApi {
  @async
  Map<String, Object> resolveSignIn(
    String resolverId,
    PigeonPhoneMultiFactorAssertion assertion,
  );
}

/// Only used to generate the object interface that are use outside of the Pigeon interface
@HostApi()
abstract class GenerateInterfaces {
  void generateInterfaces(PigeonMultiFactorInfo info);
}
