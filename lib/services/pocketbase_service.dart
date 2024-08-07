import 'package:pocketbase/pocketbase.dart';

final pb = PocketBase(
  'http://127.0.0.1:8090',
);

class PocketBaseService {
  PocketBaseService();

  RecordService get birdsCollection => pb.collection('birds');
  RecordService get cagesCollection => pb.collection('cages');
  RecordService get speciesCollection => pb.collection('species');
  RecordService get colorsCollection => pb.collection('colors');
}
