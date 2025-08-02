import 'package:equatable/equatable.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class HomeStarted extends HomeEvent {
  const HomeStarted();
}

class CategorySelected extends HomeEvent {
  final String category;
  const CategorySelected(this.category);

  @override
  List<Object> get props => [category];
}
