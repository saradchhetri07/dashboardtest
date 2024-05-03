import 'package:dashboardtest/main/environment/environmentModel.dart';
import 'package:rxdart/subjects.dart';

class EnvironmentBloc {
  final BehaviorSubject<EnvironmentModel> _environmentModel =
      BehaviorSubject<EnvironmentModel>();

  void setValues() {
    _environmentModel.sink.add(EnvironmentModel());
  }

  Stream<EnvironmentModel> get environmentModel => _environmentModel.stream;

  EnvironmentModel get envModelValue => _environmentModel.stream.value;

  closeStream() {
    _environmentModel.close();
  }
}
