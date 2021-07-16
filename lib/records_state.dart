import 'package:equatable/equatable.dart';
import 'package:state_bloc_test/record_model.dart';

abstract class RecordState extends Equatable {}

class RecordInitialState extends RecordState {
  @override
  List<Object?> get props => [];
}

class RecordLoadState extends RecordState {
  @override
  List<Object?> get props => [];
}

class RecordLoadedState extends RecordState {
  @override
  List<Object?> get props => [];
}

class RecordDataState extends RecordState {
  final List<RecordModel> records;

  RecordDataState(this.records);

  @override
  List<Object?> get props => [records];
}
