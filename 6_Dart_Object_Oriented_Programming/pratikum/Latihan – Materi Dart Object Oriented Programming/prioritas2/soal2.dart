// 2. Buatlah sebuah class Course dan Student dengan kriteria sebagai berikut:
//    a.  Atribut dari Course terdiri dari judul dan deskripsi.
//    b.  Atribut dari Student terdiri dari nama, kelas dan daftar course yang dimiliki.
//    c.  Student dapat menambahkan course.
//    d.  Student dapat menghapus course.
//    e.  Student dapat melihat semua course yang telah ditambahkan.

class Course {
  String judul;
  String deskripsi;

  Course(this.judul, this.deskripsi);
}

class Student {
  String nama;
  String kelas;
  List<Course> daftarCourse = [];

  Student(this.nama, this.kelas);

  void tambahCourse(Course course) {
    daftarCourse.add(course);
    print("Course ${course.judul} ditambahkan ke daftar.");
  }

  void hapusCourse(Course course) {
    daftarCourse.remove(course);
    print("Course ${course.judul} dihapus dari daftar.");
  }

  void lihatDaftarCourse() {
    if (daftarCourse.isEmpty) {
      print("Tidak ada course dalam daftar.");
    } else {
      print("Daftar course milik $nama:");
      for (var course in daftarCourse) {
        print("- ${course.judul}: ${course.deskripsi}");
      }
    }
  }
}

void main() {
  Course course1 = Course("Matematika", "Pengenalan konsep matematika dasar.");
  Course course2 = Course("Bahasa Inggris", "Pengembangan keterampilan berbicara dan menulis.");

  Student student = Student("John", "Kelas 10");

  student.tambahCourse(course1);
  student.tambahCourse(course2);
  student.lihatDaftarCourse();

  student.hapusCourse(course1);
  student.lihatDaftarCourse();
}
