import 'package:flutter/material.dart';
import 'package:yumemi_code_check/domain/model/github/github_repository_info.dart';

class RepositoryDetailPage extends StatelessWidget {
  const RepositoryDetailPage({Key? key, required this.info}) : super(key: key);

  final GithubRepositoryInfo info;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(info.name, style: Theme.of(context).textTheme.bodyMedium),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: SizedBox(
                height: 250,
                width: 250,
                child: Container(
                  color: Theme.of(context).inputDecorationTheme.fillColor,
                  child: Image.network(
                    info.owner.avatarUrl,
                    errorBuilder: (context, error, st) => Stack(
                      alignment: AlignmentDirectional.center,
                      children: const [
                        Text(
                          'Image Load Error',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
