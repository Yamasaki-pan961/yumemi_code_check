import 'dart:convert';

final mockSearchStatusResponse = <int, Map<String, dynamic>>{
  200: jsonDecode(searchRepositoryJson) as Map<String, dynamic>,
  422: jsonDecode(
    '''
{
    "message": "Validation Failed",
    "errors": [
        {
            "resource": "Search",
            "field": "q",
            "code": "missing"
        }
    ],
    "documentation_url": "https://docs.github.com/v3/search"
}
''',
  ) as Map<String, dynamic>,
  503: <String, dynamic>{'message': 'Server Error'}
};

const String searchRepositoryJson = '''
{
  "total_count": 182901,
  "incomplete_results": false,
  "items": [
    {
      "id": 3432266,
      "node_id": "MDEwOlJlcG9zaXRvcnkzNDMyMjY2",
      "name": "kotlin",
      "full_name": "JetBrains/kotlin",
      "private": false,
      "owner": {
        "login": "JetBrains",
        "id": 878437,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjg3ODQzNw==",
        "avatar_url": "https://avatars.githubusercontent.com/u/878437?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/JetBrains",
        "html_url": "https://github.com/JetBrains",
        "followers_url": "https://api.github.com/users/JetBrains/followers",
        "following_url":
            "https://api.github.com/users/JetBrains/following{/other_user}",
        "gists_url": "https://api.github.com/users/JetBrains/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/JetBrains/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/JetBrains/subscriptions",
        "organizations_url": "https://api.github.com/users/JetBrains/orgs",
        "repos_url": "https://api.github.com/users/JetBrains/repos",
        "events_url": "https://api.github.com/users/JetBrains/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/JetBrains/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/JetBrains/kotlin",
      "description": "The Kotlin Programming Language. ",
      "fork": false,
      "url": "https://api.github.com/repos/JetBrains/kotlin",
      "forks_url": "https://api.github.com/repos/JetBrains/kotlin/forks",
      "keys_url": "https://api.github.com/repos/JetBrains/kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/JetBrains/kotlin/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/JetBrains/kotlin/teams",
      "hooks_url": "https://api.github.com/repos/JetBrains/kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/JetBrains/kotlin/issues/events{/number}",
      "events_url": "https://api.github.com/repos/JetBrains/kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/JetBrains/kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/JetBrains/kotlin/branches{/branch}",
      "tags_url": "https://api.github.com/repos/JetBrains/kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/JetBrains/kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/JetBrains/kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/JetBrains/kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/JetBrains/kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/JetBrains/kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/JetBrains/kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/JetBrains/kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/JetBrains/kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/JetBrains/kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/JetBrains/kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/JetBrains/kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/JetBrains/kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/JetBrains/kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/JetBrains/kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/JetBrains/kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/JetBrains/kotlin/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/JetBrains/kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/JetBrains/kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/JetBrains/kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/JetBrains/kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/JetBrains/kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/JetBrains/kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/JetBrains/kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/JetBrains/kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/JetBrains/kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/JetBrains/kotlin/deployments",
      "created_at": "2012-02-13T17:29:58Z",
      "updated_at": "2022-05-21T12:39:38Z",
      "pushed_at": "2022-05-21T12:49:35Z",
      "git_url": "git://github.com/JetBrains/kotlin.git",
      "ssh_url": "git@github.com:JetBrains/kotlin.git",
      "clone_url": "https://github.com/JetBrains/kotlin.git",
      "svn_url": "https://github.com/JetBrains/kotlin",
      "homepage": "https://kotlinlang.org",
      "size": 1472073,
      "stargazers_count": 41485,
      "watchers_count": 41485,
      "language": "Kotlin",
      "has_issues": false,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 5118,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 131,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "compiler",
        "gradle-plugin",
        "intellij-plugin",
        "kotlin",
        "kotlin-library",
        "maven-plugin",
        "programming-language"
      ],
      "visibility": "public",
      "forks": 5118,
      "open_issues": 131,
      "watchers": 41485,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 91829561,
      "node_id": "MDEwOlJlcG9zaXRvcnk5MTgyOTU2MQ==",
      "name": "KotlinUdemy",
      "full_name": "hussien89aa/KotlinUdemy",
      "private": false,
      "owner": {
        "login": "hussien89aa",
        "id": 7304399,
        "node_id": "MDQ6VXNlcjczMDQzOTk=",
        "avatar_url": "https://avatars.githubusercontent.com/u/7304399?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/hussien89aa",
        "html_url": "https://github.com/hussien89aa",
        "followers_url": "https://api.github.com/users/hussien89aa/followers",
        "following_url":
            "https://api.github.com/users/hussien89aa/following{/other_user}",
        "gists_url": "https://api.github.com/users/hussien89aa/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/hussien89aa/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/hussien89aa/subscriptions",
        "organizations_url": "https://api.github.com/users/hussien89aa/orgs",
        "repos_url": "https://api.github.com/users/hussien89aa/repos",
        "events_url":
            "https://api.github.com/users/hussien89aa/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/hussien89aa/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/hussien89aa/KotlinUdemy",
      "description":
          "Learn how to make online games, and apps for Android O, like Pokémon , twitter,Tic Tac Toe, and notepad using Kotlin",
      "fork": false,
      "url": "https://api.github.com/repos/hussien89aa/KotlinUdemy",
      "forks_url": "https://api.github.com/repos/hussien89aa/KotlinUdemy/forks",
      "keys_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/hussien89aa/KotlinUdemy/teams",
      "hooks_url": "https://api.github.com/repos/hussien89aa/KotlinUdemy/hooks",
      "issue_events_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/events",
      "assignees_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/branches{/branch}",
      "tags_url": "https://api.github.com/repos/hussien89aa/KotlinUdemy/tags",
      "blobs_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/languages",
      "stargazers_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/stargazers",
      "contributors_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/contributors",
      "subscribers_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/subscribers",
      "subscription_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/subscription",
      "commits_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/merges",
      "archive_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/downloads",
      "issues_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/hussien89aa/KotlinUdemy/deployments",
      "created_at": "2017-05-19T17:24:22Z",
      "updated_at": "2022-05-20T12:30:18Z",
      "pushed_at": "2021-03-15T19:58:10Z",
      "git_url": "git://github.com/hussien89aa/KotlinUdemy.git",
      "ssh_url": "git@github.com:hussien89aa/KotlinUdemy.git",
      "clone_url": "https://github.com/hussien89aa/KotlinUdemy.git",
      "svn_url": "https://github.com/hussien89aa/KotlinUdemy",
      "homepage":
          "https://www.udemy.com/the-complete-kotlin-developer-course/?couponCode=UDMEYGITHUB",
      "size": 2791,
      "stargazers_count": 1446,
      "watchers_count": 1446,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 4931,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 13,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["kotlin", "kotlin-android"],
      "visibility": "public",
      "forks": 4931,
      "open_issues": 13,
      "watchers": 1446,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 111071830,
      "node_id": "MDEwOlJlcG9zaXRvcnkxMTEwNzE4MzA=",
      "name": "KotlinMvp",
      "full_name": "git-xuhao/KotlinMvp",
      "private": false,
      "owner": {
        "login": "git-xuhao",
        "id": 12512971,
        "node_id": "MDQ6VXNlcjEyNTEyOTcx",
        "avatar_url": "https://avatars.githubusercontent.com/u/12512971?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/git-xuhao",
        "html_url": "https://github.com/git-xuhao",
        "followers_url": "https://api.github.com/users/git-xuhao/followers",
        "following_url":
            "https://api.github.com/users/git-xuhao/following{/other_user}",
        "gists_url": "https://api.github.com/users/git-xuhao/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/git-xuhao/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/git-xuhao/subscriptions",
        "organizations_url": "https://api.github.com/users/git-xuhao/orgs",
        "repos_url": "https://api.github.com/users/git-xuhao/repos",
        "events_url": "https://api.github.com/users/git-xuhao/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/git-xuhao/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/git-xuhao/KotlinMvp",
      "description":
          ":fire: 基于Kotlin+MVP+Retrofit+RxJava+Glide 等架构实现短视频类小项目，简约风格及详细注释，欢迎 star or fork！",
      "fork": false,
      "url": "https://api.github.com/repos/git-xuhao/KotlinMvp",
      "forks_url": "https://api.github.com/repos/git-xuhao/KotlinMvp/forks",
      "keys_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/git-xuhao/KotlinMvp/teams",
      "hooks_url": "https://api.github.com/repos/git-xuhao/KotlinMvp/hooks",
      "issue_events_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/issues/events{/number}",
      "events_url": "https://api.github.com/repos/git-xuhao/KotlinMvp/events",
      "assignees_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/branches{/branch}",
      "tags_url": "https://api.github.com/repos/git-xuhao/KotlinMvp/tags",
      "blobs_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/languages",
      "stargazers_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/stargazers",
      "contributors_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/contributors",
      "subscribers_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/subscribers",
      "subscription_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/subscription",
      "commits_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/git-xuhao/KotlinMvp/merges",
      "archive_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/downloads",
      "issues_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/git-xuhao/KotlinMvp/deployments",
      "created_at": "2017-11-17T07:26:11Z",
      "updated_at": "2022-05-16T19:26:21Z",
      "pushed_at": "2020-06-30T04:51:54Z",
      "git_url": "git://github.com/git-xuhao/KotlinMvp.git",
      "ssh_url": "git@github.com:git-xuhao/KotlinMvp.git",
      "clone_url": "https://github.com/git-xuhao/KotlinMvp.git",
      "svn_url": "https://github.com/git-xuhao/KotlinMvp",
      "homepage": "https://xuhaoblog.com/KotlinMvp",
      "size": 23627,
      "stargazers_count": 3532,
      "watchers_count": 3532,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": true,
      "forks_count": 901,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 16,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "eyepetizer",
        "kotlin",
        "kotlin-android",
        "kotlin-glide",
        "kotlin-language",
        "kotlin-mvp",
        "kotlin-mvp-retrofit-rxjava",
        "kotlin-retrofit",
        "kotlin-rxjava-android",
        "mvp",
        "mvp-retrofit-rxjava",
        "mvp-rxjava-retrofit",
        "retrofit2",
        "rxjava",
        "rxjava2",
        "rxjava2-retrofit2"
      ],
      "visibility": "public",
      "forks": 901,
      "open_issues": 16,
      "watchers": 3532,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 177334737,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNzczMzQ3Mzc=",
      "name": "Kotlin",
      "full_name": "TheAlgorithms/Kotlin",
      "private": false,
      "owner": {
        "login": "TheAlgorithms",
        "id": 20487725,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjIwNDg3NzI1",
        "avatar_url": "https://avatars.githubusercontent.com/u/20487725?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/TheAlgorithms",
        "html_url": "https://github.com/TheAlgorithms",
        "followers_url": "https://api.github.com/users/TheAlgorithms/followers",
        "following_url":
            "https://api.github.com/users/TheAlgorithms/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/TheAlgorithms/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/TheAlgorithms/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/TheAlgorithms/subscriptions",
        "organizations_url": "https://api.github.com/users/TheAlgorithms/orgs",
        "repos_url": "https://api.github.com/users/TheAlgorithms/repos",
        "events_url":
            "https://api.github.com/users/TheAlgorithms/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/TheAlgorithms/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/TheAlgorithms/Kotlin",
      "description": "All Algorithms implemented in Kotlin",
      "fork": false,
      "url": "https://api.github.com/repos/TheAlgorithms/Kotlin",
      "forks_url": "https://api.github.com/repos/TheAlgorithms/Kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/TheAlgorithms/Kotlin/teams",
      "hooks_url": "https://api.github.com/repos/TheAlgorithms/Kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/issues/events{/number}",
      "events_url": "https://api.github.com/repos/TheAlgorithms/Kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/branches{/branch}",
      "tags_url": "https://api.github.com/repos/TheAlgorithms/Kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/TheAlgorithms/Kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/TheAlgorithms/Kotlin/deployments",
      "created_at": "2019-03-23T20:03:53Z",
      "updated_at": "2022-05-20T05:25:31Z",
      "pushed_at": "2022-03-20T04:58:55Z",
      "git_url": "git://github.com/TheAlgorithms/Kotlin.git",
      "ssh_url": "git@github.com:TheAlgorithms/Kotlin.git",
      "clone_url": "https://github.com/TheAlgorithms/Kotlin.git",
      "svn_url": "https://github.com/TheAlgorithms/Kotlin",
      "homepage": "",
      "size": 156,
      "stargazers_count": 781,
      "watchers_count": 781,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 242,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 49,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 242,
      "open_issues": 49,
      "watchers": 781,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 17946069,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNzk0NjA2OQ==",
      "name": "kotlin-koans",
      "full_name": "Kotlin/kotlin-koans",
      "private": false,
      "owner": {
        "login": "Kotlin",
        "id": 1446536,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0NDY1MzY=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1446536?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin",
        "html_url": "https://github.com/Kotlin",
        "followers_url": "https://api.github.com/users/Kotlin/followers",
        "following_url":
            "https://api.github.com/users/Kotlin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Kotlin/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin/subscriptions",
        "organizations_url": "https://api.github.com/users/Kotlin/orgs",
        "repos_url": "https://api.github.com/users/Kotlin/repos",
        "events_url": "https://api.github.com/users/Kotlin/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Kotlin/kotlin-koans",
      "description": "Kotlin workshop",
      "fork": false,
      "url": "https://api.github.com/repos/Kotlin/kotlin-koans",
      "forks_url": "https://api.github.com/repos/Kotlin/kotlin-koans/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/Kotlin/kotlin-koans/teams",
      "hooks_url": "https://api.github.com/repos/Kotlin/kotlin-koans/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/issues/events{/number}",
      "events_url": "https://api.github.com/repos/Kotlin/kotlin-koans/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/branches{/branch}",
      "tags_url": "https://api.github.com/repos/Kotlin/kotlin-koans/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/Kotlin/kotlin-koans/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin/kotlin-koans/deployments",
      "created_at": "2014-03-20T14:41:33Z",
      "updated_at": "2022-05-18T15:47:31Z",
      "pushed_at": "2019-07-15T09:15:04Z",
      "git_url": "git://github.com/Kotlin/kotlin-koans.git",
      "ssh_url": "git@github.com:Kotlin/kotlin-koans.git",
      "clone_url": "https://github.com/Kotlin/kotlin-koans.git",
      "svn_url": "https://github.com/Kotlin/kotlin-koans",
      "homepage": null,
      "size": 6693,
      "stargazers_count": 2581,
      "watchers_count": 2581,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 1480,
      "mirror_url": null,
      "archived": true,
      "disabled": false,
      "open_issues_count": 37,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 1480,
      "open_issues": 37,
      "watchers": 2581,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 61722736,
      "node_id": "MDEwOlJlcG9zaXRvcnk2MTcyMjczNg==",
      "name": "kotlinx.coroutines",
      "full_name": "Kotlin/kotlinx.coroutines",
      "private": false,
      "owner": {
        "login": "Kotlin",
        "id": 1446536,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0NDY1MzY=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1446536?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin",
        "html_url": "https://github.com/Kotlin",
        "followers_url": "https://api.github.com/users/Kotlin/followers",
        "following_url":
            "https://api.github.com/users/Kotlin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Kotlin/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin/subscriptions",
        "organizations_url": "https://api.github.com/users/Kotlin/orgs",
        "repos_url": "https://api.github.com/users/Kotlin/repos",
        "events_url": "https://api.github.com/users/Kotlin/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Kotlin/kotlinx.coroutines",
      "description": "Library support for Kotlin coroutines ",
      "fork": false,
      "url": "https://api.github.com/repos/Kotlin/kotlinx.coroutines",
      "forks_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/teams",
      "hooks_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/branches{/branch}",
      "tags_url": "https://api.github.com/repos/Kotlin/kotlinx.coroutines/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin/kotlinx.coroutines/deployments",
      "created_at": "2016-06-22T13:49:21Z",
      "updated_at": "2022-05-21T06:47:06Z",
      "pushed_at": "2022-05-20T13:09:25Z",
      "git_url": "git://github.com/Kotlin/kotlinx.coroutines.git",
      "ssh_url": "git@github.com:Kotlin/kotlinx.coroutines.git",
      "clone_url": "https://github.com/Kotlin/kotlinx.coroutines.git",
      "svn_url": "https://github.com/Kotlin/kotlinx.coroutines",
      "homepage": "",
      "size": 28779,
      "stargazers_count": 10776,
      "watchers_count": 10776,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": true,
      "forks_count": 1571,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 246,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["async", "coroutines", "kotlin"],
      "visibility": "public",
      "forks": 1571,
      "open_issues": 246,
      "watchers": 10776,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 40936978,
      "node_id": "MDEwOlJlcG9zaXRvcnk0MDkzNjk3OA==",
      "name": "awesome-kotlin",
      "full_name": "KotlinBy/awesome-kotlin",
      "private": false,
      "owner": {
        "login": "KotlinBy",
        "id": 17604656,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE3NjA0NjU2",
        "avatar_url": "https://avatars.githubusercontent.com/u/17604656?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/KotlinBy",
        "html_url": "https://github.com/KotlinBy",
        "followers_url": "https://api.github.com/users/KotlinBy/followers",
        "following_url":
            "https://api.github.com/users/KotlinBy/following{/other_user}",
        "gists_url": "https://api.github.com/users/KotlinBy/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/KotlinBy/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/KotlinBy/subscriptions",
        "organizations_url": "https://api.github.com/users/KotlinBy/orgs",
        "repos_url": "https://api.github.com/users/KotlinBy/repos",
        "events_url": "https://api.github.com/users/KotlinBy/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/KotlinBy/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/KotlinBy/awesome-kotlin",
      "description":
          "A curated list of awesome Kotlin related stuff Inspired by awesome-java. ",
      "fork": false,
      "url": "https://api.github.com/repos/KotlinBy/awesome-kotlin",
      "forks_url": "https://api.github.com/repos/KotlinBy/awesome-kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/KotlinBy/awesome-kotlin/teams",
      "hooks_url": "https://api.github.com/repos/KotlinBy/awesome-kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/branches{/branch}",
      "tags_url": "https://api.github.com/repos/KotlinBy/awesome-kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/KotlinBy/awesome-kotlin/deployments",
      "created_at": "2015-08-17T23:29:55Z",
      "updated_at": "2022-05-20T10:38:03Z",
      "pushed_at": "2022-05-20T13:55:42Z",
      "git_url": "git://github.com/KotlinBy/awesome-kotlin.git",
      "ssh_url": "git@github.com:KotlinBy/awesome-kotlin.git",
      "clone_url": "https://github.com/KotlinBy/awesome-kotlin.git",
      "svn_url": "https://github.com/KotlinBy/awesome-kotlin",
      "homepage": "https://kotlin.link/",
      "size": 113729,
      "stargazers_count": 9919,
      "watchers_count": 9919,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 1127,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 21,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "hacktoberfest",
        "kotlin",
        "kotlin-android",
        "kotlin-extensions",
        "kotlin-language",
        "kotlin-library"
      ],
      "visibility": "public",
      "forks": 1127,
      "open_issues": 21,
      "watchers": 9919,
      "default_branch": "main",
      "score": 1.0
    },
    {
      "id": 160725246,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNjA3MjUyNDY=",
      "name": "android-kotlin-fundamentals-apps",
      "full_name": "google-developer-training/android-kotlin-fundamentals-apps",
      "private": false,
      "owner": {
        "login": "google-developer-training",
        "id": 19180220,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5MTgwMjIw",
        "avatar_url": "https://avatars.githubusercontent.com/u/19180220?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/google-developer-training",
        "html_url": "https://github.com/google-developer-training",
        "followers_url":
            "https://api.github.com/users/google-developer-training/followers",
        "following_url":
            "https://api.github.com/users/google-developer-training/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/google-developer-training/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/google-developer-training/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/google-developer-training/subscriptions",
        "organizations_url":
            "https://api.github.com/users/google-developer-training/orgs",
        "repos_url":
            "https://api.github.com/users/google-developer-training/repos",
        "events_url":
            "https://api.github.com/users/google-developer-training/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/google-developer-training/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url":
          "https://github.com/google-developer-training/android-kotlin-fundamentals-apps",
      "description": "android-kotlin-fundamentals-apps",
      "fork": false,
      "url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps",
      "forks_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/forks",
      "keys_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/teams",
      "hooks_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/hooks",
      "issue_events_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/events",
      "assignees_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/tags",
      "blobs_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/languages",
      "stargazers_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/stargazers",
      "contributors_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/contributors",
      "subscribers_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/subscribers",
      "subscription_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/subscription",
      "commits_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/merges",
      "archive_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/downloads",
      "issues_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-apps/deployments",
      "created_at": "2018-12-06T20:00:52Z",
      "updated_at": "2022-05-21T06:58:51Z",
      "pushed_at": "2022-03-22T17:23:11Z",
      "git_url":
          "git://github.com/google-developer-training/android-kotlin-fundamentals-apps.git",
      "ssh_url":
          "git@github.com:google-developer-training/android-kotlin-fundamentals-apps.git",
      "clone_url":
          "https://github.com/google-developer-training/android-kotlin-fundamentals-apps.git",
      "svn_url":
          "https://github.com/google-developer-training/android-kotlin-fundamentals-apps",
      "homepage": null,
      "size": 34982,
      "stargazers_count": 1325,
      "watchers_count": 1325,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 1991,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 446,
      "license": {
        "key": "other",
        "name": "Other",
        "spdx_id": "NOASSERTION",
        "url": null,
        "node_id": "MDc6TGljZW5zZTA="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 1991,
      "open_issues": 446,
      "watchers": 1325,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 47675865,
      "node_id": "MDEwOlJlcG9zaXRvcnk0NzY3NTg2NQ==",
      "name": "kotlin",
      "full_name": "exercism/kotlin",
      "private": false,
      "owner": {
        "login": "exercism",
        "id": 5624255,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjU2MjQyNTU=",
        "avatar_url": "https://avatars.githubusercontent.com/u/5624255?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/exercism",
        "html_url": "https://github.com/exercism",
        "followers_url": "https://api.github.com/users/exercism/followers",
        "following_url":
            "https://api.github.com/users/exercism/following{/other_user}",
        "gists_url": "https://api.github.com/users/exercism/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/exercism/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/exercism/subscriptions",
        "organizations_url": "https://api.github.com/users/exercism/orgs",
        "repos_url": "https://api.github.com/users/exercism/repos",
        "events_url": "https://api.github.com/users/exercism/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/exercism/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/exercism/kotlin",
      "description": "Exercism exercises in Kotlin.",
      "fork": false,
      "url": "https://api.github.com/repos/exercism/kotlin",
      "forks_url": "https://api.github.com/repos/exercism/kotlin/forks",
      "keys_url": "https://api.github.com/repos/exercism/kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/exercism/kotlin/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/exercism/kotlin/teams",
      "hooks_url": "https://api.github.com/repos/exercism/kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/exercism/kotlin/issues/events{/number}",
      "events_url": "https://api.github.com/repos/exercism/kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/exercism/kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/exercism/kotlin/branches{/branch}",
      "tags_url": "https://api.github.com/repos/exercism/kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/exercism/kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/exercism/kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/exercism/kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/exercism/kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/exercism/kotlin/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/exercism/kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/exercism/kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/exercism/kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/exercism/kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/exercism/kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/exercism/kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/exercism/kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/exercism/kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/exercism/kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/exercism/kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/exercism/kotlin/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/exercism/kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/exercism/kotlin/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/exercism/kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/exercism/kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/exercism/kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/exercism/kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/exercism/kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/exercism/kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/exercism/kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/exercism/kotlin/deployments",
      "created_at": "2015-12-09T07:31:10Z",
      "updated_at": "2022-05-12T16:56:50Z",
      "pushed_at": "2022-05-11T12:10:56Z",
      "git_url": "git://github.com/exercism/kotlin.git",
      "ssh_url": "git@github.com:exercism/kotlin.git",
      "clone_url": "https://github.com/exercism/kotlin.git",
      "svn_url": "https://github.com/exercism/kotlin",
      "homepage": "https://exercism.org/tracks/kotlin",
      "size": 1881,
      "stargazers_count": 146,
      "watchers_count": 146,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 151,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 43,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["exercism-track"],
      "visibility": "public",
      "forks": 151,
      "open_issues": 43,
      "watchers": 146,
      "default_branch": "main",
      "score": 1.0
    },
    {
      "id": 8856204,
      "node_id": "MDEwOlJlcG9zaXRvcnk4ODU2MjA0",
      "name": "kotlin-examples",
      "full_name": "Kotlin/kotlin-examples",
      "private": false,
      "owner": {
        "login": "Kotlin",
        "id": 1446536,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0NDY1MzY=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1446536?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin",
        "html_url": "https://github.com/Kotlin",
        "followers_url": "https://api.github.com/users/Kotlin/followers",
        "following_url":
            "https://api.github.com/users/Kotlin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Kotlin/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin/subscriptions",
        "organizations_url": "https://api.github.com/users/Kotlin/orgs",
        "repos_url": "https://api.github.com/users/Kotlin/repos",
        "events_url": "https://api.github.com/users/Kotlin/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Kotlin/kotlin-examples",
      "description": "Various examples for Kotlin",
      "fork": false,
      "url": "https://api.github.com/repos/Kotlin/kotlin-examples",
      "forks_url": "https://api.github.com/repos/Kotlin/kotlin-examples/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/Kotlin/kotlin-examples/teams",
      "hooks_url": "https://api.github.com/repos/Kotlin/kotlin-examples/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/branches{/branch}",
      "tags_url": "https://api.github.com/repos/Kotlin/kotlin-examples/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin/kotlin-examples/deployments",
      "created_at": "2013-03-18T14:34:06Z",
      "updated_at": "2022-05-21T10:10:58Z",
      "pushed_at": "2021-10-06T10:40:38Z",
      "git_url": "git://github.com/Kotlin/kotlin-examples.git",
      "ssh_url": "git@github.com:Kotlin/kotlin-examples.git",
      "clone_url": "https://github.com/Kotlin/kotlin-examples.git",
      "svn_url": "https://github.com/Kotlin/kotlin-examples",
      "homepage": null,
      "size": 1789,
      "stargazers_count": 3067,
      "watchers_count": 3067,
      "language": null,
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 1077,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 56,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": ["gradle", "kdoc", "kotlin", "maven"],
      "visibility": "public",
      "forks": 1077,
      "open_issues": 56,
      "watchers": 3067,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 14397208,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNDM5NzIwOA==",
      "name": "kotlin-web-site",
      "full_name": "JetBrains/kotlin-web-site",
      "private": false,
      "owner": {
        "login": "JetBrains",
        "id": 878437,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjg3ODQzNw==",
        "avatar_url": "https://avatars.githubusercontent.com/u/878437?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/JetBrains",
        "html_url": "https://github.com/JetBrains",
        "followers_url": "https://api.github.com/users/JetBrains/followers",
        "following_url":
            "https://api.github.com/users/JetBrains/following{/other_user}",
        "gists_url": "https://api.github.com/users/JetBrains/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/JetBrains/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/JetBrains/subscriptions",
        "organizations_url": "https://api.github.com/users/JetBrains/orgs",
        "repos_url": "https://api.github.com/users/JetBrains/repos",
        "events_url": "https://api.github.com/users/JetBrains/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/JetBrains/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/JetBrains/kotlin-web-site",
      "description": "The Kotlin programming language website",
      "fork": false,
      "url": "https://api.github.com/repos/JetBrains/kotlin-web-site",
      "forks_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/forks",
      "keys_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/teams",
      "hooks_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/hooks",
      "issue_events_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/events",
      "assignees_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/branches{/branch}",
      "tags_url": "https://api.github.com/repos/JetBrains/kotlin-web-site/tags",
      "blobs_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/languages",
      "stargazers_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/stargazers",
      "contributors_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/contributors",
      "subscribers_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/subscribers",
      "subscription_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/subscription",
      "commits_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/merges",
      "archive_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/downloads",
      "issues_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/JetBrains/kotlin-web-site/deployments",
      "created_at": "2013-11-14T14:26:54Z",
      "updated_at": "2022-05-18T09:05:47Z",
      "pushed_at": "2022-05-21T00:52:24Z",
      "git_url": "git://github.com/JetBrains/kotlin-web-site.git",
      "ssh_url": "git@github.com:JetBrains/kotlin-web-site.git",
      "clone_url": "https://github.com/JetBrains/kotlin-web-site.git",
      "svn_url": "https://github.com/JetBrains/kotlin-web-site",
      "homepage": "http://kotlinlang.org",
      "size": 329990,
      "stargazers_count": 1162,
      "watchers_count": 1162,
      "language": "JavaScript",
      "has_issues": false,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 3170,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 33,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["kotlin"],
      "visibility": "public",
      "forks": 3170,
      "open_issues": 33,
      "watchers": 1162,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 160725573,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNjA3MjU1NzM=",
      "name": "android-kotlin-fundamentals-starter-apps",
      "full_name":
          "google-developer-training/android-kotlin-fundamentals-starter-apps",
      "private": false,
      "owner": {
        "login": "google-developer-training",
        "id": 19180220,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE5MTgwMjIw",
        "avatar_url": "https://avatars.githubusercontent.com/u/19180220?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/google-developer-training",
        "html_url": "https://github.com/google-developer-training",
        "followers_url":
            "https://api.github.com/users/google-developer-training/followers",
        "following_url":
            "https://api.github.com/users/google-developer-training/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/google-developer-training/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/google-developer-training/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/google-developer-training/subscriptions",
        "organizations_url":
            "https://api.github.com/users/google-developer-training/orgs",
        "repos_url":
            "https://api.github.com/users/google-developer-training/repos",
        "events_url":
            "https://api.github.com/users/google-developer-training/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/google-developer-training/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url":
          "https://github.com/google-developer-training/android-kotlin-fundamentals-starter-apps",
      "description": "android-kotlin-fundamentals-starter-apps",
      "fork": false,
      "url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps",
      "forks_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/forks",
      "keys_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/teams",
      "hooks_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/hooks",
      "issue_events_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/events",
      "assignees_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/tags",
      "blobs_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/languages",
      "stargazers_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/stargazers",
      "contributors_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/contributors",
      "subscribers_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/subscribers",
      "subscription_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/subscription",
      "commits_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/merges",
      "archive_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/downloads",
      "issues_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/google-developer-training/android-kotlin-fundamentals-starter-apps/deployments",
      "created_at": "2018-12-06T20:04:05Z",
      "updated_at": "2022-05-20T14:32:54Z",
      "pushed_at": "2022-04-05T10:49:56Z",
      "git_url":
          "git://github.com/google-developer-training/android-kotlin-fundamentals-starter-apps.git",
      "ssh_url":
          "git@github.com:google-developer-training/android-kotlin-fundamentals-starter-apps.git",
      "clone_url":
          "https://github.com/google-developer-training/android-kotlin-fundamentals-starter-apps.git",
      "svn_url":
          "https://github.com/google-developer-training/android-kotlin-fundamentals-starter-apps",
      "homepage": null,
      "size": 22206,
      "stargazers_count": 874,
      "watchers_count": 874,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 3115,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 36,
      "license": {
        "key": "other",
        "name": "Other",
        "spdx_id": "NOASSERTION",
        "url": null,
        "node_id": "MDc6TGljZW5zZTA="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 3115,
      "open_issues": 36,
      "watchers": 874,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 58957623,
      "node_id": "MDEwOlJlcG9zaXRvcnk1ODk1NzYyMw==",
      "name": "kotlin-native",
      "full_name": "JetBrains/kotlin-native",
      "private": false,
      "owner": {
        "login": "JetBrains",
        "id": 878437,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjg3ODQzNw==",
        "avatar_url": "https://avatars.githubusercontent.com/u/878437?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/JetBrains",
        "html_url": "https://github.com/JetBrains",
        "followers_url": "https://api.github.com/users/JetBrains/followers",
        "following_url":
            "https://api.github.com/users/JetBrains/following{/other_user}",
        "gists_url": "https://api.github.com/users/JetBrains/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/JetBrains/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/JetBrains/subscriptions",
        "organizations_url": "https://api.github.com/users/JetBrains/orgs",
        "repos_url": "https://api.github.com/users/JetBrains/repos",
        "events_url": "https://api.github.com/users/JetBrains/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/JetBrains/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/JetBrains/kotlin-native",
      "description": "Kotlin/Native infrastructure",
      "fork": false,
      "url": "https://api.github.com/repos/JetBrains/kotlin-native",
      "forks_url": "https://api.github.com/repos/JetBrains/kotlin-native/forks",
      "keys_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/JetBrains/kotlin-native/teams",
      "hooks_url": "https://api.github.com/repos/JetBrains/kotlin-native/hooks",
      "issue_events_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/events",
      "assignees_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/branches{/branch}",
      "tags_url": "https://api.github.com/repos/JetBrains/kotlin-native/tags",
      "blobs_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/languages",
      "stargazers_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/stargazers",
      "contributors_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/contributors",
      "subscribers_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/subscribers",
      "subscription_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/subscription",
      "commits_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/merges",
      "archive_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/downloads",
      "issues_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/JetBrains/kotlin-native/deployments",
      "created_at": "2016-05-16T18:40:45Z",
      "updated_at": "2022-05-20T18:09:09Z",
      "pushed_at": "2021-08-10T12:31:53Z",
      "git_url": "git://github.com/JetBrains/kotlin-native.git",
      "ssh_url": "git@github.com:JetBrains/kotlin-native.git",
      "clone_url": "https://github.com/JetBrains/kotlin-native.git",
      "svn_url": "https://github.com/JetBrains/kotlin-native",
      "homepage": "",
      "size": 91978,
      "stargazers_count": 7077,
      "watchers_count": 7077,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 620,
      "mirror_url": null,
      "archived": true,
      "disabled": false,
      "open_issues_count": 0,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["c", "compiler", "kotlin", "llvm", "objective-c"],
      "visibility": "public",
      "forks": 620,
      "open_issues": 0,
      "watchers": 7077,
      "default_branch": "archive",
      "score": 1.0
    },
    {
      "id": 11765017,
      "node_id": "MDEwOlJlcG9zaXRvcnkxMTc2NTAxNw==",
      "name": "Exposed",
      "full_name": "JetBrains/Exposed",
      "private": false,
      "owner": {
        "login": "JetBrains",
        "id": 878437,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjg3ODQzNw==",
        "avatar_url": "https://avatars.githubusercontent.com/u/878437?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/JetBrains",
        "html_url": "https://github.com/JetBrains",
        "followers_url": "https://api.github.com/users/JetBrains/followers",
        "following_url":
            "https://api.github.com/users/JetBrains/following{/other_user}",
        "gists_url": "https://api.github.com/users/JetBrains/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/JetBrains/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/JetBrains/subscriptions",
        "organizations_url": "https://api.github.com/users/JetBrains/orgs",
        "repos_url": "https://api.github.com/users/JetBrains/repos",
        "events_url": "https://api.github.com/users/JetBrains/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/JetBrains/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/JetBrains/Exposed",
      "description": "Kotlin SQL Framework",
      "fork": false,
      "url": "https://api.github.com/repos/JetBrains/Exposed",
      "forks_url": "https://api.github.com/repos/JetBrains/Exposed/forks",
      "keys_url":
          "https://api.github.com/repos/JetBrains/Exposed/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/JetBrains/Exposed/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/JetBrains/Exposed/teams",
      "hooks_url": "https://api.github.com/repos/JetBrains/Exposed/hooks",
      "issue_events_url":
          "https://api.github.com/repos/JetBrains/Exposed/issues/events{/number}",
      "events_url": "https://api.github.com/repos/JetBrains/Exposed/events",
      "assignees_url":
          "https://api.github.com/repos/JetBrains/Exposed/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/JetBrains/Exposed/branches{/branch}",
      "tags_url": "https://api.github.com/repos/JetBrains/Exposed/tags",
      "blobs_url":
          "https://api.github.com/repos/JetBrains/Exposed/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/JetBrains/Exposed/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/JetBrains/Exposed/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/JetBrains/Exposed/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/JetBrains/Exposed/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/JetBrains/Exposed/languages",
      "stargazers_url":
          "https://api.github.com/repos/JetBrains/Exposed/stargazers",
      "contributors_url":
          "https://api.github.com/repos/JetBrains/Exposed/contributors",
      "subscribers_url":
          "https://api.github.com/repos/JetBrains/Exposed/subscribers",
      "subscription_url":
          "https://api.github.com/repos/JetBrains/Exposed/subscription",
      "commits_url":
          "https://api.github.com/repos/JetBrains/Exposed/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/JetBrains/Exposed/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/JetBrains/Exposed/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/JetBrains/Exposed/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/JetBrains/Exposed/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/JetBrains/Exposed/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/JetBrains/Exposed/merges",
      "archive_url":
          "https://api.github.com/repos/JetBrains/Exposed/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/JetBrains/Exposed/downloads",
      "issues_url":
          "https://api.github.com/repos/JetBrains/Exposed/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/JetBrains/Exposed/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/JetBrains/Exposed/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/JetBrains/Exposed/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/JetBrains/Exposed/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/JetBrains/Exposed/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/JetBrains/Exposed/deployments",
      "created_at": "2013-07-30T12:55:27Z",
      "updated_at": "2022-05-21T10:16:35Z",
      "pushed_at": "2022-05-19T03:54:24Z",
      "git_url": "git://github.com/JetBrains/Exposed.git",
      "ssh_url": "git@github.com:JetBrains/Exposed.git",
      "clone_url": "https://github.com/JetBrains/Exposed.git",
      "svn_url": "https://github.com/JetBrains/Exposed",
      "homepage": null,
      "size": 13569,
      "stargazers_count": 6209,
      "watchers_count": 6209,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 500,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 330,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["dao", "kotlin", "orm", "sql"],
      "visibility": "public",
      "forks": 500,
      "open_issues": 330,
      "watchers": 6209,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 23095938,
      "node_id": "MDEwOlJlcG9zaXRvcnkyMzA5NTkzOA==",
      "name": "RxKotlin",
      "full_name": "ReactiveX/RxKotlin",
      "private": false,
      "owner": {
        "login": "ReactiveX",
        "id": 6407041,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjY0MDcwNDE=",
        "avatar_url": "https://avatars.githubusercontent.com/u/6407041?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/ReactiveX",
        "html_url": "https://github.com/ReactiveX",
        "followers_url": "https://api.github.com/users/ReactiveX/followers",
        "following_url":
            "https://api.github.com/users/ReactiveX/following{/other_user}",
        "gists_url": "https://api.github.com/users/ReactiveX/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/ReactiveX/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/ReactiveX/subscriptions",
        "organizations_url": "https://api.github.com/users/ReactiveX/orgs",
        "repos_url": "https://api.github.com/users/ReactiveX/repos",
        "events_url": "https://api.github.com/users/ReactiveX/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/ReactiveX/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/ReactiveX/RxKotlin",
      "description": "RxJava bindings for Kotlin",
      "fork": false,
      "url": "https://api.github.com/repos/ReactiveX/RxKotlin",
      "forks_url": "https://api.github.com/repos/ReactiveX/RxKotlin/forks",
      "keys_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/ReactiveX/RxKotlin/teams",
      "hooks_url": "https://api.github.com/repos/ReactiveX/RxKotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/issues/events{/number}",
      "events_url": "https://api.github.com/repos/ReactiveX/RxKotlin/events",
      "assignees_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/branches{/branch}",
      "tags_url": "https://api.github.com/repos/ReactiveX/RxKotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/ReactiveX/RxKotlin/merges",
      "archive_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/ReactiveX/RxKotlin/deployments",
      "created_at": "2014-08-19T03:45:59Z",
      "updated_at": "2022-05-21T03:23:07Z",
      "pushed_at": "2021-12-29T22:32:43Z",
      "git_url": "git://github.com/ReactiveX/RxKotlin.git",
      "ssh_url": "git@github.com:ReactiveX/RxKotlin.git",
      "clone_url": "https://github.com/ReactiveX/RxKotlin.git",
      "svn_url": "https://github.com/ReactiveX/RxKotlin",
      "homepage": "",
      "size": 635,
      "stargazers_count": 6859,
      "watchers_count": 6859,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 460,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 28,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["kotlin", "rxjava"],
      "visibility": "public",
      "forks": 460,
      "open_issues": 28,
      "watchers": 6859,
      "default_branch": "3.x",
      "score": 1.0
    },
    {
      "id": 70414057,
      "node_id": "MDEwOlJlcG9zaXRvcnk3MDQxNDA1Nw==",
      "name": "Kotlin-Tutorials",
      "full_name": "bennyhuo/Kotlin-Tutorials",
      "private": false,
      "owner": {
        "login": "bennyhuo",
        "id": 6336960,
        "node_id": "MDQ6VXNlcjYzMzY5NjA=",
        "avatar_url": "https://avatars.githubusercontent.com/u/6336960?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/bennyhuo",
        "html_url": "https://github.com/bennyhuo",
        "followers_url": "https://api.github.com/users/bennyhuo/followers",
        "following_url":
            "https://api.github.com/users/bennyhuo/following{/other_user}",
        "gists_url": "https://api.github.com/users/bennyhuo/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/bennyhuo/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/bennyhuo/subscriptions",
        "organizations_url": "https://api.github.com/users/bennyhuo/orgs",
        "repos_url": "https://api.github.com/users/bennyhuo/repos",
        "events_url": "https://api.github.com/users/bennyhuo/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/bennyhuo/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/bennyhuo/Kotlin-Tutorials",
      "description": "【持续更新中】本仓库持续记录以 Kotlin 为基础的视频内容的制作过程",
      "fork": false,
      "url": "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials",
      "forks_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/forks",
      "keys_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/teams",
      "hooks_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/hooks",
      "issue_events_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/events",
      "assignees_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/branches{/branch}",
      "tags_url": "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/tags",
      "blobs_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/languages",
      "stargazers_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/stargazers",
      "contributors_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/contributors",
      "subscribers_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/subscribers",
      "subscription_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/subscription",
      "commits_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/merges",
      "archive_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/downloads",
      "issues_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/bennyhuo/Kotlin-Tutorials/deployments",
      "created_at": "2016-10-09T15:59:04Z",
      "updated_at": "2022-05-20T10:17:27Z",
      "pushed_at": "2022-04-03T23:34:28Z",
      "git_url": "git://github.com/bennyhuo/Kotlin-Tutorials.git",
      "ssh_url": "git@github.com:bennyhuo/Kotlin-Tutorials.git",
      "clone_url": "https://github.com/bennyhuo/Kotlin-Tutorials.git",
      "svn_url": "https://github.com/bennyhuo/Kotlin-Tutorials",
      "homepage": "",
      "size": 10793,
      "stargazers_count": 4053,
      "watchers_count": 4053,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 567,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 8,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "article",
        "java-kotlin",
        "kapt",
        "kotlin",
        "tutorial",
        "video"
      ],
      "visibility": "public",
      "forks": 567,
      "open_issues": 8,
      "watchers": 4053,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 69469299,
      "node_id": "MDEwOlJlcG9zaXRvcnk2OTQ2OTI5OQ==",
      "name": "apollo-kotlin",
      "full_name": "apollographql/apollo-kotlin",
      "private": false,
      "owner": {
        "login": "apollographql",
        "id": 17189275,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE3MTg5Mjc1",
        "avatar_url": "https://avatars.githubusercontent.com/u/17189275?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/apollographql",
        "html_url": "https://github.com/apollographql",
        "followers_url": "https://api.github.com/users/apollographql/followers",
        "following_url":
            "https://api.github.com/users/apollographql/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/apollographql/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/apollographql/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/apollographql/subscriptions",
        "organizations_url": "https://api.github.com/users/apollographql/orgs",
        "repos_url": "https://api.github.com/users/apollographql/repos",
        "events_url":
            "https://api.github.com/users/apollographql/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/apollographql/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/apollographql/apollo-kotlin",
      "description":
          ":robot:  A strongly-typed, caching GraphQL client for the JVM, Android, and Kotlin multiplatform.",
      "fork": false,
      "url": "https://api.github.com/repos/apollographql/apollo-kotlin",
      "forks_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/teams",
      "hooks_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/apollographql/apollo-kotlin/deployments",
      "created_at": "2016-09-28T14:03:30Z",
      "updated_at": "2022-05-20T16:36:45Z",
      "pushed_at": "2022-05-20T18:02:19Z",
      "git_url": "git://github.com/apollographql/apollo-kotlin.git",
      "ssh_url": "git@github.com:apollographql/apollo-kotlin.git",
      "clone_url": "https://github.com/apollographql/apollo-kotlin.git",
      "svn_url": "https://github.com/apollographql/apollo-kotlin",
      "homepage": "https://www.apollographql.com/docs/kotlin",
      "size": 189382,
      "stargazers_count": 3142,
      "watchers_count": 3142,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": true,
      "forks_count": 586,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 134,
      "license": {
        "key": "mit",
        "name": "MIT License",
        "spdx_id": "MIT",
        "url": "https://api.github.com/licenses/mit",
        "node_id": "MDc6TGljZW5zZTEz"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "android",
        "apollographql",
        "graphql",
        "graphql-client",
        "kotlin",
        "kotlin-multiplatform",
        "multiplatform"
      ],
      "visibility": "public",
      "forks": 586,
      "open_issues": 134,
      "watchers": 3142,
      "default_branch": "main",
      "score": 1.0
    },
    {
      "id": 91953571,
      "node_id": "MDEwOlJlcG9zaXRvcnk5MTk1MzU3MQ==",
      "name": "from-java-to-kotlin",
      "full_name": "MindorksOpenSource/from-java-to-kotlin",
      "private": false,
      "owner": {
        "login": "MindorksOpenSource",
        "id": 22527655,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjIyNTI3NjU1",
        "avatar_url": "https://avatars.githubusercontent.com/u/22527655?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/MindorksOpenSource",
        "html_url": "https://github.com/MindorksOpenSource",
        "followers_url":
            "https://api.github.com/users/MindorksOpenSource/followers",
        "following_url":
            "https://api.github.com/users/MindorksOpenSource/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/MindorksOpenSource/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/MindorksOpenSource/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/MindorksOpenSource/subscriptions",
        "organizations_url":
            "https://api.github.com/users/MindorksOpenSource/orgs",
        "repos_url": "https://api.github.com/users/MindorksOpenSource/repos",
        "events_url":
            "https://api.github.com/users/MindorksOpenSource/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/MindorksOpenSource/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/MindorksOpenSource/from-java-to-kotlin",
      "description":
          "From Java To Kotlin - Your Cheat Sheet For Java To Kotlin",
      "fork": false,
      "url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin",
      "forks_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/teams",
      "hooks_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/MindorksOpenSource/from-java-to-kotlin/deployments",
      "created_at": "2017-05-21T11:56:27Z",
      "updated_at": "2022-05-21T12:31:31Z",
      "pushed_at": "2022-03-04T18:56:18Z",
      "git_url": "git://github.com/MindorksOpenSource/from-java-to-kotlin.git",
      "ssh_url": "git@github.com:MindorksOpenSource/from-java-to-kotlin.git",
      "clone_url":
          "https://github.com/MindorksOpenSource/from-java-to-kotlin.git",
      "svn_url": "https://github.com/MindorksOpenSource/from-java-to-kotlin",
      "homepage": null,
      "size": 315,
      "stargazers_count": 5636,
      "watchers_count": 5636,
      "language": "Java",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 777,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 8,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "android",
        "cheet-sheet",
        "java",
        "java-to-kotiln",
        "kotlin",
        "kotlin-android",
        "kotlin-language",
        "mindorks"
      ],
      "visibility": "public",
      "forks": 777,
      "open_issues": 8,
      "watchers": 5636,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 97827246,
      "node_id": "MDEwOlJlcG9zaXRvcnk5NzgyNzI0Ng==",
      "name": "kotlinx.serialization",
      "full_name": "Kotlin/kotlinx.serialization",
      "private": false,
      "owner": {
        "login": "Kotlin",
        "id": 1446536,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0NDY1MzY=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1446536?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin",
        "html_url": "https://github.com/Kotlin",
        "followers_url": "https://api.github.com/users/Kotlin/followers",
        "following_url":
            "https://api.github.com/users/Kotlin/following{/other_user}",
        "gists_url": "https://api.github.com/users/Kotlin/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin/subscriptions",
        "organizations_url": "https://api.github.com/users/Kotlin/orgs",
        "repos_url": "https://api.github.com/users/Kotlin/repos",
        "events_url": "https://api.github.com/users/Kotlin/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Kotlin/kotlinx.serialization",
      "description": "Kotlin multiplatform / multi-format serialization ",
      "fork": false,
      "url": "https://api.github.com/repos/Kotlin/kotlinx.serialization",
      "forks_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/teams",
      "hooks_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin/kotlinx.serialization/deployments",
      "created_at": "2017-07-20T11:25:23Z",
      "updated_at": "2022-05-21T12:39:32Z",
      "pushed_at": "2022-05-19T09:35:30Z",
      "git_url": "git://github.com/Kotlin/kotlinx.serialization.git",
      "ssh_url": "git@github.com:Kotlin/kotlinx.serialization.git",
      "clone_url": "https://github.com/Kotlin/kotlinx.serialization.git",
      "svn_url": "https://github.com/Kotlin/kotlinx.serialization",
      "homepage": "",
      "size": 8616,
      "stargazers_count": 3864,
      "watchers_count": 3864,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": true,
      "forks_count": 480,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 360,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["cbor", "json", "kotlin", "protobuf", "serialization"],
      "visibility": "public",
      "forks": 480,
      "open_issues": 360,
      "watchers": 3864,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 92510608,
      "node_id": "MDEwOlJlcG9zaXRvcnk5MjUxMDYwOA==",
      "name": "Android-CleanArchitecture-Kotlin",
      "full_name": "android10/Android-CleanArchitecture-Kotlin",
      "private": false,
      "owner": {
        "login": "android10",
        "id": 1360604,
        "node_id": "MDQ6VXNlcjEzNjA2MDQ=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1360604?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/android10",
        "html_url": "https://github.com/android10",
        "followers_url": "https://api.github.com/users/android10/followers",
        "following_url":
            "https://api.github.com/users/android10/following{/other_user}",
        "gists_url": "https://api.github.com/users/android10/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/android10/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/android10/subscriptions",
        "organizations_url": "https://api.github.com/users/android10/orgs",
        "repos_url": "https://api.github.com/users/android10/repos",
        "events_url": "https://api.github.com/users/android10/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/android10/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url":
          "https://github.com/android10/Android-CleanArchitecture-Kotlin",
      "description":
          "This is a movies sample app in Kotlin, which is part of a serie of blog posts I have written about architecting android application using different approaches.",
      "fork": false,
      "url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin",
      "forks_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/teams",
      "hooks_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/android10/Android-CleanArchitecture-Kotlin/deployments",
      "created_at": "2017-05-26T12:55:52Z",
      "updated_at": "2022-05-21T12:44:31Z",
      "pushed_at": "2022-02-18T13:56:04Z",
      "git_url":
          "git://github.com/android10/Android-CleanArchitecture-Kotlin.git",
      "ssh_url":
          "git@github.com:android10/Android-CleanArchitecture-Kotlin.git",
      "clone_url":
          "https://github.com/android10/Android-CleanArchitecture-Kotlin.git",
      "svn_url":
          "https://github.com/android10/Android-CleanArchitecture-Kotlin",
      "homepage":
          "https://fernandocejas.com/2018/05/07/architecting-android-reloaded/",
      "size": 852,
      "stargazers_count": 3996,
      "watchers_count": 3996,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 841,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 75,
      "license": null,
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "android",
        "android-cleanarchitecture-kotlin",
        "android-development",
        "architectural",
        "architectural-patterns",
        "clean-architecture",
        "functional-programming",
        "kotlin",
        "kotlin-android",
        "lessons-learned",
        "mobile-development"
      ],
      "visibility": "public",
      "forks": 841,
      "open_issues": 75,
      "watchers": 3996,
      "default_branch": "main",
      "score": 1.0
    },
    {
      "id": 77341954,
      "node_id": "MDEwOlJlcG9zaXRvcnk3NzM0MTk1NA==",
      "name": "MVVM-Kotlin-Android-Architecture",
      "full_name": "ahmedeltaher/MVVM-Kotlin-Android-Architecture",
      "private": false,
      "owner": {
        "login": "ahmedeltaher",
        "id": 1812129,
        "node_id": "MDQ6VXNlcjE4MTIxMjk=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1812129?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/ahmedeltaher",
        "html_url": "https://github.com/ahmedeltaher",
        "followers_url": "https://api.github.com/users/ahmedeltaher/followers",
        "following_url":
            "https://api.github.com/users/ahmedeltaher/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/ahmedeltaher/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/ahmedeltaher/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/ahmedeltaher/subscriptions",
        "organizations_url": "https://api.github.com/users/ahmedeltaher/orgs",
        "repos_url": "https://api.github.com/users/ahmedeltaher/repos",
        "events_url":
            "https://api.github.com/users/ahmedeltaher/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/ahmedeltaher/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url":
          "https://github.com/ahmedeltaher/MVVM-Kotlin-Android-Architecture",
      "description":
          "MVVM + Kotlin + Retrofit2 + Hilt + Coroutines + Kotlin Flow + mockK + Espresso + Junit5",
      "fork": false,
      "url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture",
      "forks_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/forks",
      "keys_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/teams",
      "hooks_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/hooks",
      "issue_events_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/events",
      "assignees_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/tags",
      "blobs_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/languages",
      "stargazers_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/stargazers",
      "contributors_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/contributors",
      "subscribers_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/subscribers",
      "subscription_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/subscription",
      "commits_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/merges",
      "archive_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/downloads",
      "issues_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/ahmedeltaher/MVVM-Kotlin-Android-Architecture/deployments",
      "created_at": "2016-12-25T20:34:48Z",
      "updated_at": "2022-05-18T09:41:25Z",
      "pushed_at": "2021-06-04T05:07:18Z",
      "git_url":
          "git://github.com/ahmedeltaher/MVVM-Kotlin-Android-Architecture.git",
      "ssh_url":
          "git@github.com:ahmedeltaher/MVVM-Kotlin-Android-Architecture.git",
      "clone_url":
          "https://github.com/ahmedeltaher/MVVM-Kotlin-Android-Architecture.git",
      "svn_url":
          "https://github.com/ahmedeltaher/MVVM-Kotlin-Android-Architecture",
      "homepage": "",
      "size": 4420,
      "stargazers_count": 1723,
      "watchers_count": 1723,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": true,
      "forks_count": 462,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 10,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": true,
      "topics": [
        "android",
        "android-architecture",
        "android-clean-architecture",
        "android-cleanarchitecture",
        "android-mvp-architecture",
        "android-mvvm-architecture",
        "coroutines",
        "espresso",
        "flow",
        "hilt-android",
        "junit",
        "mockito",
        "mockk",
        "mvp",
        "mvp-architecture",
        "mvvm",
        "mvvm-architecture",
        "mvvm-pattern",
        "retrofit2",
        "rxjava"
      ],
      "visibility": "public",
      "forks": 462,
      "open_issues": 10,
      "watchers": 1723,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 83513404,
      "node_id": "MDEwOlJlcG9zaXRvcnk4MzUxMzQwNA==",
      "name": "kotlinpoet",
      "full_name": "square/kotlinpoet",
      "private": false,
      "owner": {
        "login": "square",
        "id": 82592,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjgyNTky",
        "avatar_url": "https://avatars.githubusercontent.com/u/82592?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/square",
        "html_url": "https://github.com/square",
        "followers_url": "https://api.github.com/users/square/followers",
        "following_url":
            "https://api.github.com/users/square/following{/other_user}",
        "gists_url": "https://api.github.com/users/square/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/square/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/square/subscriptions",
        "organizations_url": "https://api.github.com/users/square/orgs",
        "repos_url": "https://api.github.com/users/square/repos",
        "events_url": "https://api.github.com/users/square/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/square/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/square/kotlinpoet",
      "description": "A Kotlin API for generating .kt source files.",
      "fork": false,
      "url": "https://api.github.com/repos/square/kotlinpoet",
      "forks_url": "https://api.github.com/repos/square/kotlinpoet/forks",
      "keys_url":
          "https://api.github.com/repos/square/kotlinpoet/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/square/kotlinpoet/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/square/kotlinpoet/teams",
      "hooks_url": "https://api.github.com/repos/square/kotlinpoet/hooks",
      "issue_events_url":
          "https://api.github.com/repos/square/kotlinpoet/issues/events{/number}",
      "events_url": "https://api.github.com/repos/square/kotlinpoet/events",
      "assignees_url":
          "https://api.github.com/repos/square/kotlinpoet/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/square/kotlinpoet/branches{/branch}",
      "tags_url": "https://api.github.com/repos/square/kotlinpoet/tags",
      "blobs_url":
          "https://api.github.com/repos/square/kotlinpoet/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/square/kotlinpoet/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/square/kotlinpoet/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/square/kotlinpoet/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/square/kotlinpoet/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/square/kotlinpoet/languages",
      "stargazers_url":
          "https://api.github.com/repos/square/kotlinpoet/stargazers",
      "contributors_url":
          "https://api.github.com/repos/square/kotlinpoet/contributors",
      "subscribers_url":
          "https://api.github.com/repos/square/kotlinpoet/subscribers",
      "subscription_url":
          "https://api.github.com/repos/square/kotlinpoet/subscription",
      "commits_url":
          "https://api.github.com/repos/square/kotlinpoet/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/square/kotlinpoet/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/square/kotlinpoet/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/square/kotlinpoet/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/square/kotlinpoet/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/square/kotlinpoet/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/square/kotlinpoet/merges",
      "archive_url":
          "https://api.github.com/repos/square/kotlinpoet/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/square/kotlinpoet/downloads",
      "issues_url":
          "https://api.github.com/repos/square/kotlinpoet/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/square/kotlinpoet/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/square/kotlinpoet/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/square/kotlinpoet/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/square/kotlinpoet/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/square/kotlinpoet/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/square/kotlinpoet/deployments",
      "created_at": "2017-03-01T04:59:42Z",
      "updated_at": "2022-05-20T10:39:24Z",
      "pushed_at": "2022-05-16T14:20:30Z",
      "git_url": "git://github.com/square/kotlinpoet.git",
      "ssh_url": "git@github.com:square/kotlinpoet.git",
      "clone_url": "https://github.com/square/kotlinpoet.git",
      "svn_url": "https://github.com/square/kotlinpoet",
      "homepage": "https://square.github.io/kotlinpoet/",
      "size": 4801,
      "stargazers_count": 3169,
      "watchers_count": 3169,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": true,
      "forks_count": 233,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 40,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["code-generation", "javapoet", "kotlin"],
      "visibility": "public",
      "forks": 233,
      "open_issues": 40,
      "watchers": 3169,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 69291380,
      "node_id": "MDEwOlJlcG9zaXRvcnk2OTI5MTM4MA==",
      "name": "Design-Patterns-In-Kotlin",
      "full_name": "dbacinski/Design-Patterns-In-Kotlin",
      "private": false,
      "owner": {
        "login": "dbacinski",
        "id": 454414,
        "node_id": "MDQ6VXNlcjQ1NDQxNA==",
        "avatar_url": "https://avatars.githubusercontent.com/u/454414?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/dbacinski",
        "html_url": "https://github.com/dbacinski",
        "followers_url": "https://api.github.com/users/dbacinski/followers",
        "following_url":
            "https://api.github.com/users/dbacinski/following{/other_user}",
        "gists_url": "https://api.github.com/users/dbacinski/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/dbacinski/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/dbacinski/subscriptions",
        "organizations_url": "https://api.github.com/users/dbacinski/orgs",
        "repos_url": "https://api.github.com/users/dbacinski/repos",
        "events_url": "https://api.github.com/users/dbacinski/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/dbacinski/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/dbacinski/Design-Patterns-In-Kotlin",
      "description": "Design Patterns implemented in Kotlin",
      "fork": false,
      "url": "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin",
      "forks_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/teams",
      "hooks_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/dbacinski/Design-Patterns-In-Kotlin/deployments",
      "created_at": "2016-09-26T20:47:03Z",
      "updated_at": "2022-05-21T12:25:07Z",
      "pushed_at": "2021-03-15T12:16:24Z",
      "git_url": "git://github.com/dbacinski/Design-Patterns-In-Kotlin.git",
      "ssh_url": "git@github.com:dbacinski/Design-Patterns-In-Kotlin.git",
      "clone_url": "https://github.com/dbacinski/Design-Patterns-In-Kotlin.git",
      "svn_url": "https://github.com/dbacinski/Design-Patterns-In-Kotlin",
      "homepage": "",
      "size": 234,
      "stargazers_count": 5217,
      "watchers_count": 5217,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 641,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 10,
      "license": {
        "key": "gpl-3.0",
        "name": "GNU General Public License v3.0",
        "spdx_id": "GPL-3.0",
        "url": "https://api.github.com/licenses/gpl-3.0",
        "node_id": "MDc6TGljZW5zZTk="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["design", "design-patterns", "kotlin", "kotlin-android"],
      "visibility": "public",
      "forks": 641,
      "open_issues": 10,
      "watchers": 5217,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 71729669,
      "node_id": "MDEwOlJlcG9zaXRvcnk3MTcyOTY2OQ==",
      "name": "detekt",
      "full_name": "detekt/detekt",
      "private": false,
      "owner": {
        "login": "detekt",
        "id": 57960713,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjU3OTYwNzEz",
        "avatar_url": "https://avatars.githubusercontent.com/u/57960713?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/detekt",
        "html_url": "https://github.com/detekt",
        "followers_url": "https://api.github.com/users/detekt/followers",
        "following_url":
            "https://api.github.com/users/detekt/following{/other_user}",
        "gists_url": "https://api.github.com/users/detekt/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/detekt/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/detekt/subscriptions",
        "organizations_url": "https://api.github.com/users/detekt/orgs",
        "repos_url": "https://api.github.com/users/detekt/repos",
        "events_url": "https://api.github.com/users/detekt/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/detekt/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/detekt/detekt",
      "description": "Static code analysis for Kotlin",
      "fork": false,
      "url": "https://api.github.com/repos/detekt/detekt",
      "forks_url": "https://api.github.com/repos/detekt/detekt/forks",
      "keys_url": "https://api.github.com/repos/detekt/detekt/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/detekt/detekt/collaborators{/collaborator}",
      "teams_url": "https://api.github.com/repos/detekt/detekt/teams",
      "hooks_url": "https://api.github.com/repos/detekt/detekt/hooks",
      "issue_events_url":
          "https://api.github.com/repos/detekt/detekt/issues/events{/number}",
      "events_url": "https://api.github.com/repos/detekt/detekt/events",
      "assignees_url":
          "https://api.github.com/repos/detekt/detekt/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/detekt/detekt/branches{/branch}",
      "tags_url": "https://api.github.com/repos/detekt/detekt/tags",
      "blobs_url": "https://api.github.com/repos/detekt/detekt/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/detekt/detekt/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/detekt/detekt/git/refs{/sha}",
      "trees_url": "https://api.github.com/repos/detekt/detekt/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/detekt/detekt/statuses/{sha}",
      "languages_url": "https://api.github.com/repos/detekt/detekt/languages",
      "stargazers_url": "https://api.github.com/repos/detekt/detekt/stargazers",
      "contributors_url":
          "https://api.github.com/repos/detekt/detekt/contributors",
      "subscribers_url":
          "https://api.github.com/repos/detekt/detekt/subscribers",
      "subscription_url":
          "https://api.github.com/repos/detekt/detekt/subscription",
      "commits_url": "https://api.github.com/repos/detekt/detekt/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/detekt/detekt/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/detekt/detekt/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/detekt/detekt/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/detekt/detekt/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/detekt/detekt/compare/{base}...{head}",
      "merges_url": "https://api.github.com/repos/detekt/detekt/merges",
      "archive_url":
          "https://api.github.com/repos/detekt/detekt/{archive_format}{/ref}",
      "downloads_url": "https://api.github.com/repos/detekt/detekt/downloads",
      "issues_url":
          "https://api.github.com/repos/detekt/detekt/issues{/number}",
      "pulls_url": "https://api.github.com/repos/detekt/detekt/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/detekt/detekt/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/detekt/detekt/notifications{?since,all,participating}",
      "labels_url": "https://api.github.com/repos/detekt/detekt/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/detekt/detekt/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/detekt/detekt/deployments",
      "created_at": "2016-10-23T21:04:45Z",
      "updated_at": "2022-05-21T09:54:26Z",
      "pushed_at": "2022-05-21T11:27:33Z",
      "git_url": "git://github.com/detekt/detekt.git",
      "ssh_url": "git@github.com:detekt/detekt.git",
      "clone_url": "https://github.com/detekt/detekt.git",
      "svn_url": "https://github.com/detekt/detekt",
      "homepage": "https://detekt.dev",
      "size": 53053,
      "stargazers_count": 4518,
      "watchers_count": 4518,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": true,
      "forks_count": 625,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 144,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "analysis",
        "code-quality",
        "codesmells",
        "gradle-plugin",
        "hacktoberfest",
        "kotlin",
        "lint",
        "linter",
        "static",
        "static-analysis"
      ],
      "visibility": "public",
      "forks": 625,
      "open_issues": 144,
      "watchers": 4518,
      "default_branch": "main",
      "score": 1.0
    },
    {
      "id": 211898661,
      "node_id": "MDEwOlJlcG9zaXRvcnkyMTE4OTg2NjE=",
      "name": "KotlinAsFirst-Coursera-v2019",
      "full_name": "Kotlin-Polytech/KotlinAsFirst-Coursera-v2019",
      "private": false,
      "owner": {
        "login": "Kotlin-Polytech",
        "id": 20967488,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjIwOTY3NDg4",
        "avatar_url": "https://avatars.githubusercontent.com/u/20967488?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin-Polytech",
        "html_url": "https://github.com/Kotlin-Polytech",
        "followers_url":
            "https://api.github.com/users/Kotlin-Polytech/followers",
        "following_url":
            "https://api.github.com/users/Kotlin-Polytech/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/Kotlin-Polytech/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin-Polytech/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin-Polytech/subscriptions",
        "organizations_url":
            "https://api.github.com/users/Kotlin-Polytech/orgs",
        "repos_url": "https://api.github.com/users/Kotlin-Polytech/repos",
        "events_url":
            "https://api.github.com/users/Kotlin-Polytech/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin-Polytech/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url":
          "https://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019",
      "description":
          "Репозиторий для курса https://www.coursera.org/learn/vvedenie-v-yazyk-kotlin/ (версия 2019)",
      "fork": false,
      "url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019",
      "forks_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/teams",
      "hooks_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019/deployments",
      "created_at": "2019-09-30T15:58:55Z",
      "updated_at": "2022-05-13T00:32:44Z",
      "pushed_at": "2021-06-11T19:18:21Z",
      "git_url":
          "git://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019.git",
      "ssh_url":
          "git@github.com:Kotlin-Polytech/KotlinAsFirst-Coursera-v2019.git",
      "clone_url":
          "https://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019.git",
      "svn_url":
          "https://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera-v2019",
      "homepage": null,
      "size": 950,
      "stargazers_count": 18,
      "watchers_count": 18,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 1772,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 3,
      "license": {
        "key": "cc-by-sa-4.0",
        "name": "Creative Commons Attribution Share Alike 4.0 International",
        "spdx_id": "CC-BY-SA-4.0",
        "url": "https://api.github.com/licenses/cc-by-sa-4.0",
        "node_id": "MDc6TGljZW5zZTI2"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 1772,
      "open_issues": 3,
      "watchers": 18,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 147703059,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNDc3MDMwNTk=",
      "name": "KotlinAsFirst-Coursera",
      "full_name": "Kotlin-Polytech/KotlinAsFirst-Coursera",
      "private": false,
      "owner": {
        "login": "Kotlin-Polytech",
        "id": 20967488,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjIwOTY3NDg4",
        "avatar_url": "https://avatars.githubusercontent.com/u/20967488?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin-Polytech",
        "html_url": "https://github.com/Kotlin-Polytech",
        "followers_url":
            "https://api.github.com/users/Kotlin-Polytech/followers",
        "following_url":
            "https://api.github.com/users/Kotlin-Polytech/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/Kotlin-Polytech/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin-Polytech/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin-Polytech/subscriptions",
        "organizations_url":
            "https://api.github.com/users/Kotlin-Polytech/orgs",
        "repos_url": "https://api.github.com/users/Kotlin-Polytech/repos",
        "events_url":
            "https://api.github.com/users/Kotlin-Polytech/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin-Polytech/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera",
      "description":
          "Репозиторий для курса https://www.coursera.org/learn/vvedenie-v-yazyk-kotlin/",
      "fork": false,
      "url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera",
      "forks_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/teams",
      "hooks_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst-Coursera/deployments",
      "created_at": "2018-09-06T16:36:02Z",
      "updated_at": "2021-12-30T18:27:36Z",
      "pushed_at": "2019-09-21T09:52:06Z",
      "git_url": "git://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera.git",
      "ssh_url": "git@github.com:Kotlin-Polytech/KotlinAsFirst-Coursera.git",
      "clone_url":
          "https://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera.git",
      "svn_url": "https://github.com/Kotlin-Polytech/KotlinAsFirst-Coursera",
      "homepage": "",
      "size": 858,
      "stargazers_count": 23,
      "watchers_count": 23,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 817,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 3,
      "license": {
        "key": "cc-by-sa-4.0",
        "name": "Creative Commons Attribution Share Alike 4.0 International",
        "spdx_id": "CC-BY-SA-4.0",
        "url": "https://api.github.com/licenses/cc-by-sa-4.0",
        "node_id": "MDc6TGljZW5zZTI2"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 817,
      "open_issues": 3,
      "watchers": 23,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 147702642,
      "node_id": "MDEwOlJlcG9zaXRvcnkxNDc3MDI2NDI=",
      "name": "KotlinAsFirst2018",
      "full_name": "Kotlin-Polytech/KotlinAsFirst2018",
      "private": false,
      "owner": {
        "login": "Kotlin-Polytech",
        "id": 20967488,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjIwOTY3NDg4",
        "avatar_url": "https://avatars.githubusercontent.com/u/20967488?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/Kotlin-Polytech",
        "html_url": "https://github.com/Kotlin-Polytech",
        "followers_url":
            "https://api.github.com/users/Kotlin-Polytech/followers",
        "following_url":
            "https://api.github.com/users/Kotlin-Polytech/following{/other_user}",
        "gists_url":
            "https://api.github.com/users/Kotlin-Polytech/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/Kotlin-Polytech/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/Kotlin-Polytech/subscriptions",
        "organizations_url":
            "https://api.github.com/users/Kotlin-Polytech/orgs",
        "repos_url": "https://api.github.com/users/Kotlin-Polytech/repos",
        "events_url":
            "https://api.github.com/users/Kotlin-Polytech/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/Kotlin-Polytech/received_events",
        "type": "Organization",
        "site_admin": false
      },
      "html_url": "https://github.com/Kotlin-Polytech/KotlinAsFirst2018",
      "description": "Base repo for the Kotlin course (2018)",
      "fork": false,
      "url": "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018",
      "forks_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/forks",
      "keys_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/teams",
      "hooks_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/hooks",
      "issue_events_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/events",
      "assignees_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/tags",
      "blobs_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/languages",
      "stargazers_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/stargazers",
      "contributors_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/contributors",
      "subscribers_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/subscribers",
      "subscription_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/subscription",
      "commits_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/merges",
      "archive_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/downloads",
      "issues_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/Kotlin-Polytech/KotlinAsFirst2018/deployments",
      "created_at": "2018-09-06T16:32:37Z",
      "updated_at": "2022-04-18T13:34:11Z",
      "pushed_at": "2018-11-25T19:06:39Z",
      "git_url": "git://github.com/Kotlin-Polytech/KotlinAsFirst2018.git",
      "ssh_url": "git@github.com:Kotlin-Polytech/KotlinAsFirst2018.git",
      "clone_url": "https://github.com/Kotlin-Polytech/KotlinAsFirst2018.git",
      "svn_url": "https://github.com/Kotlin-Polytech/KotlinAsFirst2018",
      "homepage": null,
      "size": 873,
      "stargazers_count": 25,
      "watchers_count": 25,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 774,
      "mirror_url": null,
      "archived": true,
      "disabled": false,
      "open_issues_count": 3,
      "license": {
        "key": "cc-by-sa-4.0",
        "name": "Creative Commons Attribution Share Alike 4.0 International",
        "spdx_id": "CC-BY-SA-4.0",
        "url": "https://api.github.com/licenses/cc-by-sa-4.0",
        "node_id": "MDc6TGljZW5zZTI2"
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 774,
      "open_issues": 3,
      "watchers": 25,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 32647256,
      "node_id": "MDEwOlJlcG9zaXRvcnkzMjY0NzI1Ng==",
      "name": "Bandhook-Kotlin",
      "full_name": "antoniolg/Bandhook-Kotlin",
      "private": false,
      "owner": {
        "login": "antoniolg",
        "id": 2178243,
        "node_id": "MDQ6VXNlcjIxNzgyNDM=",
        "avatar_url": "https://avatars.githubusercontent.com/u/2178243?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/antoniolg",
        "html_url": "https://github.com/antoniolg",
        "followers_url": "https://api.github.com/users/antoniolg/followers",
        "following_url":
            "https://api.github.com/users/antoniolg/following{/other_user}",
        "gists_url": "https://api.github.com/users/antoniolg/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/antoniolg/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/antoniolg/subscriptions",
        "organizations_url": "https://api.github.com/users/antoniolg/orgs",
        "repos_url": "https://api.github.com/users/antoniolg/repos",
        "events_url": "https://api.github.com/users/antoniolg/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/antoniolg/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/antoniolg/Bandhook-Kotlin",
      "description":
          "A showcase music app for Android entirely written using Kotlin language",
      "fork": false,
      "url": "https://api.github.com/repos/antoniolg/Bandhook-Kotlin",
      "forks_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/forks",
      "keys_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/teams",
      "hooks_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/hooks",
      "issue_events_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/events",
      "assignees_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/branches{/branch}",
      "tags_url": "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/tags",
      "blobs_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/languages",
      "stargazers_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/stargazers",
      "contributors_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/contributors",
      "subscribers_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/subscribers",
      "subscription_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/subscription",
      "commits_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/merges",
      "archive_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/downloads",
      "issues_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/antoniolg/Bandhook-Kotlin/deployments",
      "created_at": "2015-03-21T19:41:38Z",
      "updated_at": "2022-05-13T11:26:08Z",
      "pushed_at": "2018-04-10T17:01:11Z",
      "git_url": "git://github.com/antoniolg/Bandhook-Kotlin.git",
      "ssh_url": "git@github.com:antoniolg/Bandhook-Kotlin.git",
      "clone_url": "https://github.com/antoniolg/Bandhook-Kotlin.git",
      "svn_url": "https://github.com/antoniolg/Bandhook-Kotlin",
      "homepage": null,
      "size": 5483,
      "stargazers_count": 1855,
      "watchers_count": 1855,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 384,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 13,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [],
      "visibility": "public",
      "forks": 384,
      "open_issues": 13,
      "watchers": 1855,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 38667206,
      "node_id": "MDEwOlJlcG9zaXRvcnkzODY2NzIwNg==",
      "name": "Kotlin-for-Android-Developers",
      "full_name": "antoniolg/Kotlin-for-Android-Developers",
      "private": false,
      "owner": {
        "login": "antoniolg",
        "id": 2178243,
        "node_id": "MDQ6VXNlcjIxNzgyNDM=",
        "avatar_url": "https://avatars.githubusercontent.com/u/2178243?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/antoniolg",
        "html_url": "https://github.com/antoniolg",
        "followers_url": "https://api.github.com/users/antoniolg/followers",
        "following_url":
            "https://api.github.com/users/antoniolg/following{/other_user}",
        "gists_url": "https://api.github.com/users/antoniolg/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/antoniolg/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/antoniolg/subscriptions",
        "organizations_url": "https://api.github.com/users/antoniolg/orgs",
        "repos_url": "https://api.github.com/users/antoniolg/repos",
        "events_url": "https://api.github.com/users/antoniolg/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/antoniolg/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/antoniolg/Kotlin-for-Android-Developers",
      "description": "Companion App for the book",
      "fork": false,
      "url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers",
      "forks_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/forks",
      "keys_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/teams",
      "hooks_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/hooks",
      "issue_events_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/events",
      "assignees_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/tags",
      "blobs_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/languages",
      "stargazers_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/stargazers",
      "contributors_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/contributors",
      "subscribers_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/subscribers",
      "subscription_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/subscription",
      "commits_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/merges",
      "archive_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/downloads",
      "issues_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/antoniolg/Kotlin-for-Android-Developers/deployments",
      "created_at": "2015-07-07T05:57:23Z",
      "updated_at": "2022-05-18T20:59:02Z",
      "pushed_at": "2020-10-02T14:28:20Z",
      "git_url": "git://github.com/antoniolg/Kotlin-for-Android-Developers.git",
      "ssh_url": "git@github.com:antoniolg/Kotlin-for-Android-Developers.git",
      "clone_url":
          "https://github.com/antoniolg/Kotlin-for-Android-Developers.git",
      "svn_url": "https://github.com/antoniolg/Kotlin-for-Android-Developers",
      "homepage": "http://antonioleiva.com/kotlin-android-developers/",
      "size": 505,
      "stargazers_count": 2632,
      "watchers_count": 2632,
      "language": "Kotlin",
      "has_issues": true,
      "has_projects": true,
      "has_downloads": true,
      "has_wiki": true,
      "has_pages": false,
      "forks_count": 608,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 10,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": ["android-development", "book", "kotlin", "kotlin-android"],
      "visibility": "public",
      "forks": 608,
      "open_issues": 10,
      "watchers": 2632,
      "default_branch": "master",
      "score": 1.0
    },
    {
      "id": 26102180,
      "node_id": "MDEwOlJlcG9zaXRvcnkyNjEwMjE4MA==",
      "name": "material-dialogs",
      "full_name": "afollestad/material-dialogs",
      "private": false,
      "owner": {
        "login": "afollestad",
        "id": 1820165,
        "node_id": "MDQ6VXNlcjE4MjAxNjU=",
        "avatar_url": "https://avatars.githubusercontent.com/u/1820165?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/afollestad",
        "html_url": "https://github.com/afollestad",
        "followers_url": "https://api.github.com/users/afollestad/followers",
        "following_url":
            "https://api.github.com/users/afollestad/following{/other_user}",
        "gists_url": "https://api.github.com/users/afollestad/gists{/gist_id}",
        "starred_url":
            "https://api.github.com/users/afollestad/starred{/owner}{/repo}",
        "subscriptions_url":
            "https://api.github.com/users/afollestad/subscriptions",
        "organizations_url": "https://api.github.com/users/afollestad/orgs",
        "repos_url": "https://api.github.com/users/afollestad/repos",
        "events_url":
            "https://api.github.com/users/afollestad/events{/privacy}",
        "received_events_url":
            "https://api.github.com/users/afollestad/received_events",
        "type": "User",
        "site_admin": false
      },
      "html_url": "https://github.com/afollestad/material-dialogs",
      "description":
          "😍 A beautiful, fluid, and extensible dialogs API for Kotlin & Android.",
      "fork": false,
      "url": "https://api.github.com/repos/afollestad/material-dialogs",
      "forks_url":
          "https://api.github.com/repos/afollestad/material-dialogs/forks",
      "keys_url":
          "https://api.github.com/repos/afollestad/material-dialogs/keys{/key_id}",
      "collaborators_url":
          "https://api.github.com/repos/afollestad/material-dialogs/collaborators{/collaborator}",
      "teams_url":
          "https://api.github.com/repos/afollestad/material-dialogs/teams",
      "hooks_url":
          "https://api.github.com/repos/afollestad/material-dialogs/hooks",
      "issue_events_url":
          "https://api.github.com/repos/afollestad/material-dialogs/issues/events{/number}",
      "events_url":
          "https://api.github.com/repos/afollestad/material-dialogs/events",
      "assignees_url":
          "https://api.github.com/repos/afollestad/material-dialogs/assignees{/user}",
      "branches_url":
          "https://api.github.com/repos/afollestad/material-dialogs/branches{/branch}",
      "tags_url":
          "https://api.github.com/repos/afollestad/material-dialogs/tags",
      "blobs_url":
          "https://api.github.com/repos/afollestad/material-dialogs/git/blobs{/sha}",
      "git_tags_url":
          "https://api.github.com/repos/afollestad/material-dialogs/git/tags{/sha}",
      "git_refs_url":
          "https://api.github.com/repos/afollestad/material-dialogs/git/refs{/sha}",
      "trees_url":
          "https://api.github.com/repos/afollestad/material-dialogs/git/trees{/sha}",
      "statuses_url":
          "https://api.github.com/repos/afollestad/material-dialogs/statuses/{sha}",
      "languages_url":
          "https://api.github.com/repos/afollestad/material-dialogs/languages",
      "stargazers_url":
          "https://api.github.com/repos/afollestad/material-dialogs/stargazers",
      "contributors_url":
          "https://api.github.com/repos/afollestad/material-dialogs/contributors",
      "subscribers_url":
          "https://api.github.com/repos/afollestad/material-dialogs/subscribers",
      "subscription_url":
          "https://api.github.com/repos/afollestad/material-dialogs/subscription",
      "commits_url":
          "https://api.github.com/repos/afollestad/material-dialogs/commits{/sha}",
      "git_commits_url":
          "https://api.github.com/repos/afollestad/material-dialogs/git/commits{/sha}",
      "comments_url":
          "https://api.github.com/repos/afollestad/material-dialogs/comments{/number}",
      "issue_comment_url":
          "https://api.github.com/repos/afollestad/material-dialogs/issues/comments{/number}",
      "contents_url":
          "https://api.github.com/repos/afollestad/material-dialogs/contents/{+path}",
      "compare_url":
          "https://api.github.com/repos/afollestad/material-dialogs/compare/{base}...{head}",
      "merges_url":
          "https://api.github.com/repos/afollestad/material-dialogs/merges",
      "archive_url":
          "https://api.github.com/repos/afollestad/material-dialogs/{archive_format}{/ref}",
      "downloads_url":
          "https://api.github.com/repos/afollestad/material-dialogs/downloads",
      "issues_url":
          "https://api.github.com/repos/afollestad/material-dialogs/issues{/number}",
      "pulls_url":
          "https://api.github.com/repos/afollestad/material-dialogs/pulls{/number}",
      "milestones_url":
          "https://api.github.com/repos/afollestad/material-dialogs/milestones{/number}",
      "notifications_url":
          "https://api.github.com/repos/afollestad/material-dialogs/notifications{?since,all,participating}",
      "labels_url":
          "https://api.github.com/repos/afollestad/material-dialogs/labels{/name}",
      "releases_url":
          "https://api.github.com/repos/afollestad/material-dialogs/releases{/id}",
      "deployments_url":
          "https://api.github.com/repos/afollestad/material-dialogs/deployments",
      "created_at": "2014-11-03T03:21:42Z",
      "updated_at": "2022-05-21T01:43:43Z",
      "pushed_at": "2022-05-01T03:38:46Z",
      "git_url": "git://github.com/afollestad/material-dialogs.git",
      "ssh_url": "git@github.com:afollestad/material-dialogs.git",
      "clone_url": "https://github.com/afollestad/material-dialogs.git",
      "svn_url": "https://github.com/afollestad/material-dialogs",
      "homepage": "https://af.codes",
      "size": 265793,
      "stargazers_count": 19259,
      "watchers_count": 19259,
      "language": "Kotlin",
      "has_issues": false,
      "has_projects": false,
      "has_downloads": true,
      "has_wiki": false,
      "has_pages": false,
      "forks_count": 3149,
      "mirror_url": null,
      "archived": false,
      "disabled": false,
      "open_issues_count": 110,
      "license": {
        "key": "apache-2.0",
        "name": "Apache License 2.0",
        "spdx_id": "Apache-2.0",
        "url": "https://api.github.com/licenses/apache-2.0",
        "node_id": "MDc6TGljZW5zZTI="
      },
      "allow_forking": true,
      "is_template": false,
      "topics": [
        "alert",
        "android",
        "androidx",
        "bottomsheets",
        "dialogs",
        "kotlin",
        "material-design"
      ],
      "visibility": "public",
      "forks": 3149,
      "open_issues": 110,
      "watchers": 19259,
      "default_branch": "main",
      "score": 1.0
    }
  ]
}
''';
