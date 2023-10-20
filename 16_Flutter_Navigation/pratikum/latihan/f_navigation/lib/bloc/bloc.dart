// import 'package:f_navigation/bloc/bloc.dart';
// import 'package:f_navigation/bloc/equa.dart';
// import 'package:f_navigation/bloc/equa.dart';


// class ImageEvent extends Equatable {
//   @override
//   List<Object> get props => [];
// }

// class SelectedImageEvent extends ImageEvent {}

// class ImageState extends Equatable {
//   final int selectedIndex;

//   ImageState(this.selectedIndex);

//   @override
//   List<Object> get props => [selectedIndex];
// }

// class ImageBloc extends Bloc<ImageEvent, ImageState> {
//   ImageBloc() : super(ImageState(0));

//   @override
//   Stream<ImageState> mapEventToState(ImageEvent event) async* {
//     if (event is SelectedImageEvent) {
//       yield ImageState(state.selectedIndex + 1);
//     }
//   }
// }
