import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start API Azure Group Code

class APIAzureGroup {
  static String getBaseUrl() => 'https://goateduaspbackend.azurewebsites.net';
  static Map<String, String> headers = {};
  static GetSubjectsCall getSubjectsCall = GetSubjectsCall();
  static LoginCall loginCall = LoginCall();
  static GetAllNotificationCall getAllNotificationCall =
      GetAllNotificationCall();
  static CreateAccountCall createAccountCall = CreateAccountCall();
  static GetSubjectByIdCall getSubjectByIdCall = GetSubjectByIdCall();
  static ReportBugCall reportBugCall = ReportBugCall();
  static GetDiscussionsCall getDiscussionsCall = GetDiscussionsCall();
  static GetDiscussionByIdCall getDiscussionByIdCall = GetDiscussionByIdCall();
  static GetFlashcarsCall getFlashcarsCall = GetFlashcarsCall();
  static GetFlashcardByIdCall getFlashcardByIdCall = GetFlashcardByIdCall();
  static GetOwnFlashcardCall getOwnFlashcardCall = GetOwnFlashcardCall();
  static UpdateProfileCall updateProfileCall = UpdateProfileCall();
}

class GetSubjectsCall {
  Future<ApiCallResponse> call({
    int? pageNumber,
    int? pageSize,
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetSubjects',
      apiUrl: '$baseUrl/api/subject',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page_size': 5,
        'page_number': pageNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? listSubject(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? username = 'string',
    String? password = 'string',
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: '$baseUrl/api/auth/login',
      callType: ApiCallType.POST,
      headers: {},
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

class GetAllNotificationCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetAllNotification',
      apiUrl: '$baseUrl/api/notification/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'page_size': 7,
        'page_number': pageNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? listNotification(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
        true,
      ) as List?;
}

class CreateAccountCall {
  Future<ApiCallResponse> call({
    String? username = '',
    String? email = '',
    String? password = '',
    String? fullName = '',
    String? roleId = '',
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "$username",
  "email": "$email",
  "password": "$password",
  "fullName": "$fullName",
  "roleId": "$roleId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CreateAccount',
      apiUrl: '$baseUrl/api/auth/register',
      callType: ApiCallType.POST,
      headers: {},
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

class GetSubjectByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetSubjectById',
      apiUrl: '$baseUrl/api/subject/$id',
      callType: ApiCallType.GET,
      headers: {},
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

class ReportBugCall {
  Future<ApiCallResponse> call({
    String? reportTitle = '',
    String? reportContent = '',
    String? authToken = '',
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "reportTitle": "$reportTitle",
  "reportContent": "$reportContent"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ReportBug',
      apiUrl: '$baseUrl/api/report',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $authToken',
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

class GetDiscussionsCall {
  Future<ApiCallResponse> call({
    int? pageSize,
    int? pageNumber,
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetDiscussions',
      apiUrl: '$baseUrl/api/discussion',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page_size': "10",
        'page_number': pageNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  dynamic listDiscussion(dynamic response) => getJsonField(
        response,
        r'''$[:]''',
      );
}

class GetDiscussionByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetDiscussionById',
      apiUrl: '$baseUrl/api/discussion/$id',
      callType: ApiCallType.GET,
      headers: {},
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

class GetFlashcarsCall {
  Future<ApiCallResponse> call({
    int? pageNumber,
    int? pageSize,
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetFlashcars',
      apiUrl: '$baseUrl/api/flashcard',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'page_size': 8,
        'page_number': pageNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFlashcardByIdCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetFlashcardById',
      apiUrl: '$baseUrl/api/flashcard/$id',
      callType: ApiCallType.GET,
      headers: {},
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

class GetOwnFlashcardCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    int? pageNumber,
    int? pageSize,
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'GetOwnFlashcard',
      apiUrl: '$baseUrl/api/flashcard/user',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'page_size': "20",
        'page_number': pageNumber,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateProfileCall {
  Future<ApiCallResponse> call({
    String? authToken = '',
    String? fullName = '',
    String? phoneNumber = '',
    FFUploadedFile? image,
  }) async {
    final baseUrl = APIAzureGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'UpdateProfile',
      apiUrl: '$baseUrl/api/user/profile',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization': 'Bearer $authToken',
      },
      params: {
        'PhoneNumber': "$phoneNumber",
        'Image': "$image",
        'FullName': "$fullName",
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End API Azure Group Code

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
