import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/shared/cubits/theme_cubit/theme_cubit.dart';

class AppearanceSection extends StatelessWidget {
  const AppearanceSection({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = context.tr.account.appearance;

    return BlocBuilder<ThemeCubit, ThemeMode>(
      builder: (context, mode) {
        return SegmentedButton<ThemeMode>(
          segments: [
            ButtonSegment(
              value: ThemeMode.system,
              label: Text(tr.system),
              icon: const Icon(Icons.brightness_auto),
            ),
            ButtonSegment(
              value: ThemeMode.light,
              label: Text(tr.light),
              icon: const Icon(Icons.light_mode),
            ),
            ButtonSegment(
              value: ThemeMode.dark,
              label: Text(tr.dark),
              icon: const Icon(Icons.dark_mode),
            ),
          ],
          selected: {mode},
          onSelectionChanged: (s) =>
              context.read<ThemeCubit>().setMode(s.first),
        );
      },
    );
  }
}
