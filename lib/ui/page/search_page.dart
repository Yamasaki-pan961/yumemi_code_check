import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiver/strings.dart';
import 'package:yumemi_code_check/domain/model/github/search_repository_response.dart';
import 'package:yumemi_code_check/domain/model/result.dart';
import 'package:yumemi_code_check/l10n/l10n.dart';
import 'package:yumemi_code_check/ui/view_model/github_api_repository_provider.dart';
import 'package:yumemi_code_check/ui/widget/search_failure.dart';
import 'package:yumemi_code_check/ui/widget/search_success.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState = useState(false);
    final resultState = useState<Result<SearchRepositoryResponse>?>(null);
    final formKey = GlobalKey<FormState>();

    void onSubmit() {
      if (formKey.currentState!.validate()) {
        formKey.currentState!.save();
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(L10n.of(context)!.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: formKey,
              child: TextFormField(
                onSaved: (value) async {
                  if (value != null) {
                    loadingState.value = true;
                    resultState.value = await ref
                        .watch(githubApiRepositoryProvider)
                        .searchRepository(value);
                    loadingState.value = false;
                  }
                },
                validator: (value) {
                  if (isBlank(value)) {
                    return L10n.of(context)!.blankMessage;
                  }
                  if (value!.length > 255) {
                    return L10n.of(context)!.limitExceed;
                  }
                  return null;
                },
                onFieldSubmitted: (_) => onSubmit(),
                keyboardType: TextInputType.text,
                maxLength: 255,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_outlined),
                  labelText: L10n.of(context)!.inputKeyword,
                  suffixIcon: TextButton(
                    onPressed: onSubmit,
                    child: Text(L10n.of(context)!.search),
                  ),
                  border: const OutlineInputBorder(),
                  filled: true,
                ),
              ),
            ),
          ),
          if (loadingState.value) const CircularProgressIndicator(),
          Builder(
            builder: (context) {
              final result = resultState.value;
              if (result is Success<SearchRepositoryResponse>) {
                return SearchSuccess(success: result);
              }
              if (result is Failure<SearchRepositoryResponse>) {
                return SearchFailure(failure: result);
              }
              return Container();
            },
          )
        ],
      ),
    );
  }
}
