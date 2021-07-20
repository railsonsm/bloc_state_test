import 'package:equatable/equatable.dart';

class RecordModel extends Equatable {
  final String name;
  final DateTime date;

  RecordModel(this.name, this.date);

  @override
  // TODO: implement props
  List<Object> get props => [name, date];
}
