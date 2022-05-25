import 'package:flutter/material.dart';
import 'package:yumemi_code_check/domain/model/github/github_repository_info.dart';

class RepositoryDetailPage extends StatelessWidget {
  const RepositoryDetailPage({Key? key, required this.info}) : super(key: key);

  final GithubRepositoryInfo info;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          info.name,
          style: Theme.of(context).primaryTextTheme.titleSmall,
        ),
      ),
      body: Center(
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(
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
                Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  columnWidths: const {
                    0: FractionColumnWidth(0.3),
                    1: FractionColumnWidth(0.2)
                  },
                  children: [
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Language:'),
                        ),
                        Text(info.language.toString()),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Stars:'),
                        ),
                        Text(info.stargazersCount.toString()),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Forks:'),
                        ),
                        Text(info.forksCount.toString()),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Open Issues:'),
                        ),
                        Text(info.openIssuesCount.toString()),
                      ],
                    ),
                    TableRow(
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8),
                          child: Text('Watchers:'),
                        ),
                        Text(info.watchersCount.toString()),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
