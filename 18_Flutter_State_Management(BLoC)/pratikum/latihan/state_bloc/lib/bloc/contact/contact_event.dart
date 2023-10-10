

// Abstract class untuk mendefinisikan tipe-tipe event
import 'package:state_bloc/screen/screen_contact.dart';

abstract class ContactEvent {}

// Event SubmitContactEvent untuk menambahkan kontak baru
class SubmitContactEvent extends ContactEvent {
  final Contact data;

  SubmitContactEvent({
    required this.data,
  });
}

// Event EditContactEvent untuk mengedit kontak yang sudah ada
class EditContactEvent extends ContactEvent {
  final Contact data;
  final int index;

  EditContactEvent({
    required this.data,
    required this.index,
  });
}

// Event DeleteContactEvent untuk menghapus kontak
class DeleteContactEvent extends ContactEvent {
  final int index;

  DeleteContactEvent({
    required this.index,
  });
}