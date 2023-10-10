import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_bloc/bloc/galery/galery_event.dart';
import 'package:state_bloc/bloc/galery/galery_state.dart';



// Deklarasi kelas GalleryBloc yang merupakan BLoC
class GalleryBloc extends Bloc<GalleryEvent, GalleryState> {
  // Constructor untuk GalleryBloc
  GalleryBloc() : super(InitiateGalleryState()) {
    // Meng-handle event AddGalleryEvent
    on<AddGalleryEvent>(((event, emit) {
      emit(ShowGalleryState(
        selectedImage: event.selectedImage,
      )); // Emit state ShowGalleryState dengan gambar yang diterima dari event
    }));
  }
}