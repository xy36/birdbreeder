import 'package:birdbreeder/common_imports.dart';
import 'package:birdbreeder/features/csv_import/models/csv_contact_row.dart';
import 'package:data_table_2/data_table_2.dart';

class ContactPreviewTable extends StatefulWidget {
  const ContactPreviewTable({required this.rows, super.key});

  final List<CsvContactRow> rows;

  @override
  State<ContactPreviewTable> createState() => ContactPreviewTableState();
}

class ContactPreviewTableState extends State<ContactPreviewTable> {
  late _ContactDataSource _dataSource;

  @override
  void initState() {
    super.initState();
    _dataSource = _ContactDataSource(widget.rows);
  }

  @override
  void didUpdateWidget(ContactPreviewTable oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.rows != widget.rows) {
      _dataSource = _ContactDataSource(widget.rows);
    }
  }

  @override
  Widget build(BuildContext context) {
    return PaginatedDataTable2(
      columnSpacing: 12,
      horizontalMargin: 12,
      minWidth: 1000,
      rowsPerPage: 25,
      availableRowsPerPage: const [10, 25, 50, 100],
      showCheckboxColumn: false,
      wrapInCard: false,
      columns: [
        DataColumn2(
          label: Text(context.tr.csv_import.table.row),
          fixedWidth: 50,
        ),
        DataColumn2(label: Text(context.tr.csv_import.table.number)),
        DataColumn2(
          label: Text(context.tr.csv_import.table.first_name),
          size: ColumnSize.L,
        ),
        DataColumn2(
          label: Text(context.tr.csv_import.table.last_name),
          size: ColumnSize.L,
        ),
        DataColumn2(label: Text(context.tr.csv_import.table.phone)),
        DataColumn2(label: Text(context.tr.csv_import.table.cell_phone)),
        DataColumn2(
          label: Text(context.tr.csv_import.table.email),
          size: ColumnSize.L,
        ),
        DataColumn2(label: Text(context.tr.csv_import.table.city)),
        DataColumn2(
          label: Text(context.tr.csv_import.table.status),
          fixedWidth: 60,
        ),
      ],
      source: _dataSource,
    );
  }
}

class _ContactDataSource extends DataTableSource {
  _ContactDataSource(this.rows);

  final List<CsvContactRow> rows;

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
        DataCell(Text(row.number ?? '-')),
        DataCell(Text(row.firstName ?? '-')),
        DataCell(Text(row.lastName ?? '-')),
        DataCell(Text(row.phone ?? '-')),
        DataCell(Text(row.cellPhoneNumber ?? '-')),
        DataCell(Text(row.email ?? '-')),
        DataCell(Text(row.city ?? '-')),
        DataCell(_ContactStatusCell(row: row)),
      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => rows.length;

  @override
  int get selectedRowCount => 0;
}

class _ContactStatusCell extends StatelessWidget {
  const _ContactStatusCell({required this.row});

  final CsvContactRow row;

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
        message: context.tr.csv_import.status.missing_name,
        child: const Icon(Icons.warning, color: Colors.orange, size: 18),
      );
    }
    return const Icon(Icons.check_circle, color: Colors.green, size: 18);
  }
}
