import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/model/result.dart';
import 'package:yumemi_code_check/l10n/l10n.dart';

class SearchFailure extends StatelessWidget {
  const SearchFailure({Key? key, required this.failure}) : super(key: key);
  final Failure<SearchRepositoryResponse> failure;
  @override
  Widget build(BuildContext context) {
    var message = L10n.of(context)!.unknownError;
    final error = failure.error;
    if (error is DioError) {
      if (error.response != null) {
        if (error.response!.statusCode == 503) {
          message = L10n.of(context)!.serverError;
        }
      }
      if (error.error is SocketException) {
        message = L10n.of(context)!.networkError;
      }
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              Icons.highlight_off,
              color: Colors.red,
            ),
          ),
          Text(message)
        ],
      ),
    );
  }
}
