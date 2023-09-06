import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_base_state.dart';

class HomeBaseCubit extends Cubit<HomeBaseState> {
  HomeBaseCubit() : super(HomeBaseInitial());
}
