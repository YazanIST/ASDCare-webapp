import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start AuthService Group Code

class AuthServiceGroup {
  static String getBaseUrl() => 'https://0920-93-213-23-12.ngrok-free.app';
  static Map<String, String> headers = {
    'ngrok-skip-browser-warning': 'True',
  };
  static SendUserPINCall sendUserPINCall = SendUserPINCall();
  static SendPINToParentForChildLinkingCall sendPINToParentForChildLinkingCall =
      SendPINToParentForChildLinkingCall();
  static SendPINToDoctorForChildLinkingCall sendPINToDoctorForChildLinkingCall =
      SendPINToDoctorForChildLinkingCall();
  static ConfirmChildLinkingWithDoctorCall confirmChildLinkingWithDoctorCall =
      ConfirmChildLinkingWithDoctorCall();
  static RegisterChildCall registerChildCall = RegisterChildCall();
  static FetchParentsChildrenEmailsCall fetchParentsChildrenEmailsCall =
      FetchParentsChildrenEmailsCall();
  static RegisterParentCall registerParentCall = RegisterParentCall();
  static VerifyUserInformationCall verifyUserInformationCall =
      VerifyUserInformationCall();
  static ValidateUserTokenCall validateUserTokenCall = ValidateUserTokenCall();
  static GetParentEmailCall getParentEmailCall = GetParentEmailCall();
  static GetDoctorEmailCall getDoctorEmailCall = GetDoctorEmailCall();
  static FetchChildsAgeCall fetchChildsAgeCall = FetchChildsAgeCall();
  static GetUsernameCall getUsernameCall = GetUsernameCall();
  static FetchUserTypeCall fetchUserTypeCall = FetchUserTypeCall();
  static FetchUserEmailCall fetchUserEmailCall = FetchUserEmailCall();
  static FetchUsernameByEmailAndUsertypeCall
      fetchUsernameByEmailAndUsertypeCall =
      FetchUsernameByEmailAndUsertypeCall();
  static FetchParentsChildAgeCall fetchParentsChildAgeCall =
      FetchParentsChildAgeCall();
  static FetchDoctorsChildAgeCall fetchDoctorsChildAgeCall =
      FetchDoctorsChildAgeCall();
  static CheckChildHasDoctorCall checkChildHasDoctorCall =
      CheckChildHasDoctorCall();
  static GetParentEmailForDoctorCall getParentEmailForDoctorCall =
      GetParentEmailForDoctorCall();
  static GetDoctorEmailForParentCall getDoctorEmailForParentCall =
      GetDoctorEmailForParentCall();
  static FetchAllDoctorsDataCall fetchAllDoctorsDataCall =
      FetchAllDoctorsDataCall();
  static RegisterDoctorCall registerDoctorCall = RegisterDoctorCall();
  static FetchDoctorsChildrenEmailsCall fetchDoctorsChildrenEmailsCall =
      FetchDoctorsChildrenEmailsCall();
  static FetchMentorsChildrenEmailsAndNamesCall
      fetchMentorsChildrenEmailsAndNamesCall =
      FetchMentorsChildrenEmailsAndNamesCall();
}

class SendUserPINCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send User PIN',
      apiUrl: '${baseUrl}/auth/verify/user/email/send-pin',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendPINToParentForChildLinkingCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? parentEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Send PIN to Parent for Child Linking',
      apiUrl: '${baseUrl}/auth/link/child/parent/send-pin',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class SendPINToDoctorForChildLinkingCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? doctorEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "childEmail": "${childEmail}",
  "doctorEmail": "${doctorEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send PIN to Doctor for Child Linking',
      apiUrl: '${baseUrl}/auth/link/child/doctor/send-pin',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmChildLinkingWithDoctorCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? doctorEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "childEmail": "${childEmail}",
  "doctorEmail": "${doctorEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Confirm Child Linking with Doctor',
      apiUrl: '${baseUrl}/auth/link/child/doctor/confirmed',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterChildCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? firstName = '',
    String? lastName = '',
    String? parentEmail = '',
    String? birthDate = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "firstName": "${firstName}",
  "lastName": "${lastName}",
  "parentEmail": "${parentEmail}",
  "birthDate": "${birthDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register Child',
      apiUrl: '${baseUrl}/auth/register/child',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchParentsChildrenEmailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Parents Children Emails',
      apiUrl: '${baseUrl}/auth/get/parent/children',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterParentCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? username = '',
    String? password = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "username": "${username}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register Parent',
      apiUrl: '${baseUrl}/auth/register/parent',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyUserInformationCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? userType = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "userType": "${userType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify User Information',
      apiUrl: '${baseUrl}/auth/login/user',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ValidateUserTokenCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Validate User Token',
      apiUrl: '${baseUrl}/auth/validate/user/token',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetParentEmailCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Parent Email',
      apiUrl: '${baseUrl}/auth/get/child/parent',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDoctorEmailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Doctor Email',
      apiUrl: '${baseUrl}/auth/get/child/doctor',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchChildsAgeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Childs Age',
      apiUrl: '${baseUrl}/auth/get/child/age',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetUsernameCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Get Username',
      apiUrl: '${baseUrl}/auth/get/username',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchUserTypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch User Type',
      apiUrl: '${baseUrl}/auth/get/user/type',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchUserEmailCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch User Email',
      apiUrl: '${baseUrl}/auth/get/user/email',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchUsernameByEmailAndUsertypeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? email = '',
    String? userType = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "userType": "${userType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch username by email and usertype',
      apiUrl: '${baseUrl}/auth/get/username/by/email/and/usertype',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: true,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchParentsChildAgeCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? childEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Parents Child Age',
      apiUrl: '${baseUrl}/auth/get/parent/child/age',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchDoctorsChildAgeCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Doctors Child Age',
      apiUrl: '${baseUrl}/auth/get/doctor/child/age',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CheckChildHasDoctorCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? childEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Check Child Has Doctor',
      apiUrl: '${baseUrl}/auth/get/child/has/doctor',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetParentEmailForDoctorCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? childEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Parent Email For Doctor',
      apiUrl: '${baseUrl}/auth/get/child/parent/email/for/doctor',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDoctorEmailForParentCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? childEmail = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Doctor Email For Parent',
      apiUrl: '${baseUrl}/auth/get/child/doctor/email/for/parent',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchAllDoctorsDataCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch All Doctors Data',
      apiUrl: '${baseUrl}/auth/get/all/doctors/data',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RegisterDoctorCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? username = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "email": "${email}",
  "password": "${password}",
  "username": "${username}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Register Doctor',
      apiUrl: '${baseUrl}/auth/register/doctor',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchDoctorsChildrenEmailsCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Doctors Children Emails',
      apiUrl: '${baseUrl}/auth/get/doctor/children',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FetchMentorsChildrenEmailsAndNamesCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = AuthServiceGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'Fetch Mentors Children Emails and Names',
      apiUrl: '${baseUrl}/auth/get/mentor/children/emails/and/names',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End AuthService Group Code

/// Start ChildMonitoringService Group Code

class ChildMonitoringServiceGroup {
  static String getBaseUrl({
    String? authToken = '',
  }) =>
      'https://0923-93-213-23-12.ngrok-free.app';
  static Map<String, String> headers = {
    'ngrok-skip-browser-warning': 'True',
    'Authorization': '[auth_token]',
  };
  static GenerateGameCall generateGameCall = GenerateGameCall();
  static GetFeedbackCall getFeedbackCall = GetFeedbackCall();
  static FinishGameCall finishGameCall = FinishGameCall();
  static AddParentInstructionCall addParentInstructionCall =
      AddParentInstructionCall();
  static AddDoctorInstructionCall addDoctorInstructionCall =
      AddDoctorInstructionCall();
  static GetParentInstructionsCall getParentInstructionsCall =
      GetParentInstructionsCall();
  static GetDoctorInstructionsCall getDoctorInstructionsCall =
      GetDoctorInstructionsCall();
  static IncreaseGamesPlayedCall increaseGamesPlayedCall =
      IncreaseGamesPlayedCall();
  static UpdateGeneralFeedbackCall updateGeneralFeedbackCall =
      UpdateGeneralFeedbackCall();
  static GetGeneralFeedbackCall getGeneralFeedbackCall =
      GetGeneralFeedbackCall();
  static GetTotalGamesPlayedCall getTotalGamesPlayedCall =
      GetTotalGamesPlayedCall();
  static AddGameSummaryCall addGameSummaryCall = AddGameSummaryCall();
  static GetGameSummariesCall getGameSummariesCall = GetGameSummariesCall();
  static DeleteParentInstructionCall deleteParentInstructionCall =
      DeleteParentInstructionCall();
  static DeleteDoctorInstructionCall deleteDoctorInstructionCall =
      DeleteDoctorInstructionCall();
}

class GenerateGameCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Generate Game',
      apiUrl: '${baseUrl}/monitoring/advanced/generate/game',
      callType: ApiCallType.GET,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFeedbackCall {
  Future<ApiCallResponse> call({
    String? screenshot = '',
    String? subject = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "screenshot": "${screenshot}",
  "subject": "${subject}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Feedback',
      apiUrl: '${baseUrl}/monitoring/advanced/get/feedback',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class FinishGameCall {
  Future<ApiCallResponse> call({
    String? screenshot = '',
    String? subject = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "screenshot": "${screenshot}",
  "subject": "${subject}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Finish Game',
      apiUrl: '${baseUrl}/monitoring/advanced/finish/game',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddParentInstructionCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? instruction = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}",
  "instruction": "${instruction}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Parent Instruction',
      apiUrl: '${baseUrl}/monitoring/add/parent/instruction',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddDoctorInstructionCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? instruction = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}",
  "instruction": "${instruction}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Doctor Instruction',
      apiUrl: '${baseUrl}/monitoring/add/doctor/instruction',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetParentInstructionsCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Parent Instructions',
      apiUrl: '${baseUrl}/monitoring/get/parent/instructions',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDoctorInstructionsCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Doctor Instructions',
      apiUrl: '${baseUrl}/monitoring/get/doctor/instructions',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class IncreaseGamesPlayedCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Increase Games Played',
      apiUrl: '${baseUrl}/monitoring/increase/games/played',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateGeneralFeedbackCall {
  Future<ApiCallResponse> call({
    String? feedback = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Update General Feedback',
      apiUrl: '${baseUrl}/monitoring/update/general/feedback',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGeneralFeedbackCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get General Feedback',
      apiUrl: '${baseUrl}/monitoring/get/general/feedback',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetTotalGamesPlayedCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Total Games Played',
      apiUrl: '${baseUrl}/monitoring/get/total/games/played',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AddGameSummaryCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? gameSubject = '',
    String? gameSummary = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}",
  "gameSubject": "${gameSubject}",
  "gameSummary": "${gameSummary}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Add Game Summary',
      apiUrl: '${baseUrl}/monitoring/add/game/summary',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetGameSummariesCall {
  Future<ApiCallResponse> call({
    String? childEmail = '',
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "email": "${childEmail}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Game Summaries',
      apiUrl: '${baseUrl}/monitoring/get/game/summaries',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteParentInstructionCall {
  Future<ApiCallResponse> call({
    int? instructionId,
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "id": ${instructionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Parent Instruction',
      apiUrl: '${baseUrl}/monitoring/delete/parent/instruction',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeleteDoctorInstructionCall {
  Future<ApiCallResponse> call({
    int? instructionId,
    String? authToken = '',
  }) async {
    final baseUrl = ChildMonitoringServiceGroup.getBaseUrl(
      authToken: authToken,
    );

    final ffApiRequestBody = '''
{
  "id": ${instructionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Delete Doctor Instruction',
      apiUrl: '${baseUrl}/monitoring/delete/doctor/instruction',
      callType: ApiCallType.POST,
      headers: {
        'ngrok-skip-browser-warning': 'True',
        'Authorization': '${authToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End ChildMonitoringService Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
