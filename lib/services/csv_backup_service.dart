import 'dart:convert';
import 'dart:io';

class CsvBackupService {
  final List<Map<String, dynamic>> data;

  CsvBackupService(this.data);

  Future<void> exportToCsv(String filePath) async {
    final List<String> headers = data.isNotEmpty ? data.first.keys.toList() : [];
    final List<List<String>> rows = data.map((map) => headers.map((header) => map[header].toString()).toList()).toList();

    final String csvContent = [headers, ...rows].map((row) => row.join(',')).join('\n');

    final File file = File(filePath);
    await file.writeAsString(csvContent);
  }
}