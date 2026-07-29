import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/core/routing/app_router.dart';
import 'package:birdbreeder/features/export/data/pdf_header_repository.dart';
import 'package:birdbreeder/models/pdf_header/entity/pdf_header_profile.dart';
import 'package:birdbreeder/shared/icons.dart';

/// Manages the letterhead profiles offered when exporting a PDF.
@RoutePage()
class PdfHeaderListPage extends StatefulWidget {
  const PdfHeaderListPage({super.key});

  @override
  State<PdfHeaderListPage> createState() => _PdfHeaderListPageState();
}

class _PdfHeaderListPageState extends State<PdfHeaderListPage> {
  static const _repository = PdfHeaderRepository();

  late Future<List<PdfHeaderProfile>> _profiles = _repository.getAll();

  void _reload() => setState(() => _profiles = _repository.getAll());

  Future<void> _edit([PdfHeaderProfile? profile]) async {
    final saved = await context.router.push<bool>(
      PdfHeaderEditRoute(profile: profile),
    );
    if (saved ?? false) _reload();
  }

  Future<void> _confirmDelete(PdfHeaderProfile profile) async {
    final tr = context.tr.export.header;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text(tr.delete_title),
        content: Text(tr.delete_content(Name: profile.name)),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(dialogContext).pop(false),
            child: Text(context.tr.common.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.of(dialogContext).pop(true),
            child: Text(context.tr.pop_up_menu.delete),
          ),
        ],
      ),
    );

    if (!(confirmed ?? false)) return;
    await _repository.delete(profile.id);
    if (!mounted) return;
    context.snackSuccess(tr.deleted);
    _reload();
  }

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.export.header;

    return Scaffold(
      appBar: AppBar(title: Text(tr.title)),
      floatingActionButton: FloatingActionButton.extended(
        icon: const Icon(AppIcons.add),
        label: Text(tr.add),
        onPressed: _edit,
      ),
      body: FutureBuilder<List<PdfHeaderProfile>>(
        future: _profiles,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final profiles = snapshot.data!;
          if (profiles.isEmpty) {
            return Padding(
              padding: const EdgeInsets.all(32),
              child: Center(
                child: Text(
                  tr.list_empty,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      ),
                ),
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.only(bottom: 96),
            itemCount: profiles.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (_, index) {
              final profile = profiles[index];
              return ListTile(
                leading: Icon(
                  profile.hasLogo
                      ? AppIcons.imageOutlined
                      : AppIcons.letterhead,
                ),
                title: Text(profile.name),
                subtitle: profile.isDefault ? Text(tr.default_badge) : null,
                trailing: IconButton(
                  icon: const Icon(AppIcons.deleteOutline),
                  onPressed: () => _confirmDelete(profile),
                ),
                onTap: () => _edit(profile),
              );
            },
          );
        },
      ),
    );
  }
}
