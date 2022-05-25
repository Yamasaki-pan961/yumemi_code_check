import 'package:flutter/material.dart';
import 'package:yumemi_code_check/domain/model/github/github_repository_info.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/model/result.dart';

class SearchSuccess extends StatelessWidget {
  const SearchSuccess({Key? key, required this.success}) : super(key: key);
  final Success<SearchRepositoryResponse> success;

  List<GithubRepositoryInfo> get items => success.value.items;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Text(
              '${success.value.totalCount}HIT',
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    subtitle: Text(items[index].name),
                  );
                },
                itemCount: items.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
