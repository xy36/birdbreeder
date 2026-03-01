import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_bird_import_cubit.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_bird_import_state.dart';
import 'package:birdbreeder/features/csv_import/cubit/csv_contact_import_cubit.dart';
import 'package:birdbreeder/features/csv_import/widges/birds_import/bird_initial_view.dart';
import 'package:birdbreeder/features/csv_import/widges/birds_import/bird_preview_view.dart';
import 'package:birdbreeder/features/csv_import/widges/completed_view.dart';
import 'package:birdbreeder/features/csv_import/widges/contacts_import/contact_initial_view.dart';
import 'package:birdbreeder/features/csv_import/widges/contacts_import/contact_preview_view.dart';
import 'package:birdbreeder/features/csv_import/widges/error_view.dart';
import 'package:birdbreeder/features/csv_import/widges/import_type_selector.dart';
import 'package:birdbreeder/features/csv_import/widges/importing_view.dart';
import 'package:birdbreeder/features/csv_import/widges/loading_view.dart';
import 'package:birdbreeder/i18n/translations.g.dart';

/// Enum to track which import type is selected
enum CsvImportType {
  none,
  birds,
  contacts,
}

class CsvImportScreen extends StatefulWidget {
  const CsvImportScreen({super.key});

  @override
  State<CsvImportScreen> createState() => _CsvImportScreenState();
}

class _CsvImportScreenState extends State<CsvImportScreen> {
  CsvImportType _importType = CsvImportType.none;

  void _selectImportType(CsvImportType type) {
    setState(() {
      _importType = type;
    });
  }

  void _resetToSelection() {
    setState(() {
      _importType = CsvImportType.none;
    });
    context.read<CsvBirdImportCubit>().reset();
    context.read<CsvContactImportCubit>().reset();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBarWithDrawer(title: t.csv_import.title),
      body: switch (_importType) {
        CsvImportType.none => ImportTypeSelector(onSelect: _selectImportType),
        CsvImportType.birds =>
          BlocBuilder<CsvBirdImportCubit, CsvBirdImportState>(
            builder: (context, state) {
              return state.when(
                initial: () => BirdInitialView(onBack: _resetToSelection),
                parsing: (fileName) => LoadingView(fileName: fileName),
                preview: (fileName, rows, validRows, invalidRows) =>
                    BirdPreviewView(
                  fileName: fileName,
                  rows: rows,
                  validRows: validRows,
                  invalidRows: invalidRows,
                  onBack: _resetToSelection,
                ),
                importing: (fileName, rows, currentIndex, totalRows, results) =>
                    ImportingView(
                  currentIndex: currentIndex,
                  totalRows: totalRows,
                  itemName: t.csv_import.birds.item_name,
                ),
                completed: (summary) => CompletedView(
                  summary: summary,
                  onReset: _resetToSelection,
                  showResourceStats: true,
                ),
                error: (message, details) => ErrorView(
                  message: message,
                  details: details,
                  onRetry: _resetToSelection,
                ),
              );
            },
          ),
        CsvImportType.contacts =>
          BlocBuilder<CsvContactImportCubit, CsvContactImportState>(
            builder: (context, state) {
              return state.when(
                initial: () => ContactInitialView(onBack: _resetToSelection),
                parsing: (fileName) => LoadingView(fileName: fileName),
                preview: (fileName, rows, validRows, invalidRows) =>
                    ContactPreviewView(
                  fileName: fileName,
                  rows: rows,
                  validRows: validRows,
                  invalidRows: invalidRows,
                  onBack: _resetToSelection,
                ),
                importing: (fileName, rows, currentIndex, totalRows, results) =>
                    ImportingView(
                  currentIndex: currentIndex,
                  totalRows: totalRows,
                  itemName: t.csv_import.contacts.item_name,
                ),
                completed: (summary) => CompletedView(
                  summary: summary,
                  onReset: _resetToSelection,
                  showResourceStats: false,
                ),
                error: (message, details) => ErrorView(
                  message: message,
                  details: details,
                  onRetry: _resetToSelection,
                ),
              );
            },
          ),
      },
    );
  }
}
