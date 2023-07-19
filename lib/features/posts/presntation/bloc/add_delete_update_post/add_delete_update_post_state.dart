part of 'add_delete_update_post_bloc.dart';

abstract class AddDeleteUpdatePostState extends Equatable {
  const AddDeleteUpdatePostState();
}

class AddDeleteUpdatePostInitial extends AddDeleteUpdatePostState {
  @override
  List<Object> get props => [];
}

class LoadingAddDeleteUpdatePostState extends AddDeleteUpdatePostState {
  @override
  List<Object?> get props => [];
}

class ErrorDeleteUpdatePostState extends AddDeleteUpdatePostState {
  final String message;

  const ErrorDeleteUpdatePostState({required this.message});

  @override
  List<Object?> get props => [message];
}
class MessageDeleteUpdatePostState extends AddDeleteUpdatePostState {
  final String message;

  const MessageDeleteUpdatePostState({required this.message});

  @override
  List<Object?> get props => [message];
}
