import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quiver/strings.dart';
import 'package:yumemi_code_check/l10n/l10n.dart';

class SearchPage extends HookConsumerWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                onSaved: (value) {},
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
        ],
      ),
    );
  }
}
