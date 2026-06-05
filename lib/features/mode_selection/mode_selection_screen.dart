import 'package:birdbreeder/app.dart';
import 'package:birdbreeder/bootstrap.dart';
import 'package:birdbreeder/i18n/strings.g.dart';
import 'package:birdbreeder/services/data_mode/data_mode.dart';
import 'package:birdbreeder/services/data_mode/data_mode_service.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/services/pocketbase_service.dart';
import 'package:birdbreeder/shared/icons.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModeSelectionScreen extends StatefulWidget {
  const ModeSelectionScreen({super.key});

  @override
  State<ModeSelectionScreen> createState() => _ModeSelectionScreenState();
}

class _ModeSelectionScreenState extends State<ModeSelectionScreen> {
  bool _busy = false;

  Future<void> _selectMode(BuildContext context, DataMode mode) async {
    if (_busy) return;
    final messenger = ScaffoldMessenger.of(context);
    setState(() => _busy = true);
    try {
      final prefs = await SharedPreferences.getInstance();
      await DataModeService.setMode(prefs, mode);

      await initializeDependencyInjection(mode);

      if (mode == DataMode.remote) {
        await s1.get<PocketBaseService>().init();
      }

      Bloc.observer = AppBlocObserver();

      runApp(TranslationProvider(child: const App()));
    } on Object catch (e) {
      if (!mounted) return;
      setState(() => _busy = false);
      messenger.showSnackBar(
        SnackBar(content: Text('Initialisierung fehlgeschlagen: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                AppIcons.flutterDash,
                size: 80,
                color: theme.colorScheme.primary,
              ),
              const SizedBox(height: 24),
              Text(
                'BirdBreeder',
                style: theme.textTheme.headlineLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Wie m\u00f6chtest du die App nutzen?',
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 48),
              _ModeCard(
                icon: AppIcons.cloud,
                title: 'Cloud-Modus',
                description: 'Daten werden auf einem Server gespeichert. '
                    'Zugriff von mehreren Ger\u00e4ten m\u00f6glich. '
                    'Login erforderlich.',
                onTap: () => _selectMode(context, DataMode.remote),
              ),
              const SizedBox(height: 16),
              _ModeCard(
                icon: AppIcons.phoneAndroid,
                title: 'Lokal-Modus',
                description: 'Alle Daten bleiben auf diesem Ger\u00e4t. '
                    'Kein Internet oder Login n\u00f6tig. '
                    'Daten k\u00f6nnen exportiert und importiert werden.',
                onTap: () => _selectMode(context, DataMode.local),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ModeCard extends StatelessWidget {
  const _ModeCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  });

  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Icon(icon, size: 40, color: theme.colorScheme.primary),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      description,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              Icon(
                AppIcons.chevronRight,
                color: theme.colorScheme.onSurfaceVariant,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
