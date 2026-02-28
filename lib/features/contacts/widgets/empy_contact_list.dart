import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';

class EmpyContactList extends StatelessWidget {
  const EmpyContactList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              context.tr.contacts.empty_list_information,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 8,
            children: [
              ElevatedButton(
                onPressed: () async {
                  await context.router.push(const CsvImportRoute());
                },
                child: Text(context.tr.contacts.import_button_text),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () async {
                  await context.router.push(ContactDetailsRoute());
                },
                child: Text(context.tr.contacts.add_contact_button_text),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
