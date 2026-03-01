import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/csv_import_screen.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_bird_import_cubit.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_contact_import_cubit.dart';
import 'package:birdbreeder/services/injection.dart';
import 'package:birdbreeder/shared/cubits/bird_breeder_cubit/bird_breeder_cubit.dart';

@RoutePage()
class CsvImportPage extends StatelessWidget {
  const CsvImportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CsvBirdImportCubit(
            birdBreederCubit: s1.get<BirdBreederCubit>(),
          ),
        ),
        BlocProvider(
          create: (_) => CsvContactImportCubit(
            birdBreederCubit: s1.get<BirdBreederCubit>(),
          ),
        ),
      ],
      child: const CsvImportScreen(),
    );
  }
}
