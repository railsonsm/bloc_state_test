import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_bloc_test/record_model.dart';
import 'package:state_bloc_test/records_state.dart';

class RecordController extends Cubit<RecordState> {
  RecordController() : super(RecordInitialState());

  test() async {
    emit(RecordLoadState());

    var list = await getRecords();

    emit(RecordDataState(list));

    emit(RecordLoadedState());
  }

  Future<List<RecordModel>> getRecords() async {
    List<RecordModel> records = [];
    for (var i = 0; i < 5; i++) {
      records.add(RecordModel('test', DateTime.now()));
    }

    Timer(Duration(seconds: 1), () {});

    return Future.value(records);
  }
}
