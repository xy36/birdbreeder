import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/backup/backup_list_screen.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class BackupListPage extends StatelessWidget {
  const BackupListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BackupListCubit(),
      child: BackupListListener(
        child: const BackupListScreen(),
      ),
    );
  }
}
