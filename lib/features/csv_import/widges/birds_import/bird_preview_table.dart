import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_bird_row.dart';
import 'package:birdbreeder/models/bird/sex_enum.dart';
import 'package:data_table_2/data_table_2.dart';

class BirdPreviewTable extends StatefulWidget {
  const BirdPreviewTable({required this.rows, super.key});

  final List<CsvBirdRow> rows;

  @override
  State<BirdPreviewTable> createState() => _BirdPreviewTableState();
}

class _BirdPreviewTableState extends State<BirdPreviewTable> {
  late _BirdDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = _BirdDataSource(widget.rows, context);
  }

  @override
  void didUpdateWidget(BirdPreviewTable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.rows != widget.rows) {
      _dataSource = _BirdDataSource(widget.rows, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      columnSpacing: 12,
      horizontalMargin: 12,
      minWidth: 1450,
      rowsPerPage: widget.rows.length < 25 ? widget.rows.length : 25,
      availableRowsPerPage: const [10, 25, 50, 100],
      showCheckboxColumn: false,
      wrapInCard: false,
      columns: [
        DataColumn2(
            label: Text(context.tr.csv_import.table.row), fixedWidth: 50),
        DataColumn2(
          label: Text(context.tr.csv_import.table.ring_number),
          size: ColumnSize.L,
        ),
        DataColumn2(label: Text(context.tr.csv_import.table.species)),
        DataColumn2(label: Text(context.tr.csv_import.table.color)),
        DataColumn2(label: Text(context.tr.csv_import.table.cage)),
        DataColumn2(
            label: Text(context.tr.csv_import.table.sex), fixedWidth: 80),
        DataColumn2(label: Text(context.tr.csv_import.table.birth_date)),
        DataColumn2(label: Text(context.tr.csv_import.table.death_date)),
        DataColumn2(label: Text(context.tr.csv_import.table.father)),
        DataColumn2(label: Text(context.tr.csv_import.table.mother)),
        DataColumn2(label: Text(context.tr.csv_import.table.breeder)),
        DataColumn2(label: Text(context.tr.csv_import.table.owner)),
        DataColumn2(
            label: Text(context.tr.csv_import.table.status), fixedWidth: 60),
      ],
      source: _dataSource,
    );
  }
}

class _BirdDataSource extends DataTableSource {
  _BirdDataSource(this.rows, this.context);

  final List<CsvBirdRow> rows;
  final BuildContext context;

  @override
  DataRow? getRow(int index) {
    if (index >= rows.length) return null;
    final row = rows[index];
    final isValid = row.isValid;
    return DataRow2(
      color: WidgetStateProperty.resolveWith<Color?>((states) {
        if (row.hasError) return Colors.red.withValues(alpha: 0.1);
        if (!isValid) return Colors.orange.withValues(alpha: 0.1);
        return null;
      }),
      cells: [
        DataCell(Text('${row.rowIndex}')),
        DataCell(Text(row.ringNumber ?? '-')),
        DataCell(Text(row.speciesName ?? '-')),
        DataCell(Text(row.colorName ?? '-')),
        DataCell(Text(row.cageName ?? '-')),
        DataCell(Text(_formatSex(row.sex))),
        DataCell(Text(_formatDate(row.bornAt))),
        DataCell(Text(_formatDate(row.diedAt))),
        DataCell(Text(row.fatherRingNumber ?? '-')),
        DataCell(Text(row.motherRingNumber ?? '-')),
        DataCell(Text(row.breederNumber ?? '-')),
        DataCell(Text(row.ownerNumber ?? '-')),
        DataCell(_BirdStatusCell(row: row)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => rows.length;

  @override
  int get selectedRowCount => 0;

  String _formatSex(Sex sex) {
    return switch (sex.toString()) {
      'Sex.male' => 'M',
      'Sex.female' => 'W',
      _ => '?',
    };
  }

  String _formatDate(DateTime? date) {
    if (date == null) return '-';
    return context.formatDate(date);
  }
}

class _BirdStatusCell extends StatelessWidget {
  const _BirdStatusCell({required this.row});

  final CsvBirdRow row;

  @override
  Widget build(BuildContext context) {
    if (row.hasError) {
      return Tooltip(
        message: row.errorMessage ?? context.tr.csv_import.status.error,
        child: const Icon(Icons.error, color: Colors.red, size: 18),
      );
    }
    if (!row.isValid) {
      return Tooltip(
        message: context.tr.csv_import.status.missing_ring_number,
        child: const Icon(Icons.warning, color: Colors.orange, size: 18),
      );
    }
    return const Icon(Icons.check_circle, color: Colors.green, size: 18);
  }
}
