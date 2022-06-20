import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'chabhi_event.dart';
part 'chabhi_state.dart';

class ChabhiBloc extends Bloc<ChabhiEvent, ChabhiState> {
  ChabhiBloc() : super(ChabhiInitial()) {
    on<ChabhiEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
