import 'package:flutter/material.dart';
import 'package:yumemi_code_check/domain/model/github/github_repository_info.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/model/result.dart';
import 'package:yumemi_code_check/ui/page/repository_detail_page.dart';

class SearchSuccess extends StatelessWidget {
  const SearchSuccess({Key? key, required this.success}) : super(key: key);
  final Success<SearchRepositoryResponse> success;

  @override
  Widget build(BuildContext context) {
    final items = success.value.items;
    
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
                  final info = items[index];
                  return ListTile(
                    subtitle: Text(info.name),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<Widget>(
                          builder: (context) =>
                              RepositoryDetailPage(info: info),
                        ),
                      );
                    },
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
