import '../../domain/dtos/student_dto.dart';
import '../../domain/entities/student_entity.dart';

abstract interface class IMenuRepository {
  Future<List<StudentEntity>> getAllStudents();
  Future<void> postStudent(StudentDTO dto);
  Future<void> deleteStudentById(int id);
}
