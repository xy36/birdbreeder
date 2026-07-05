import 'package:auto_route/auto_route.dart';
import 'package:birdbreeder/features/account/account_screen.dart';
import 'package:birdbreeder/features/backup/cubit/backup_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_list_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/backup_listener.dart';
import 'package:birdbreeder/features/backup/cubit/cloud_backup_cubit.dart';
import 'package:birdbreeder/features/backup/cubit/cloud_backup_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => BackupCubit()),
        BlocProvider(create: (_) => BackupListCubit()),
        BlocProvider(create: (_) => CloudBackupCubit()),
      ],
      child: BackupListener(
        child: CloudBackupListener(
          child: const AccountScreen(),
        ),
      ),
    );
  }
}
