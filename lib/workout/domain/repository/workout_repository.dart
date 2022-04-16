abstract class WorkoutRepository {
  const WorkoutRepository();

  Future<void> get();
  Future<void> post();
  Future<void> put();
  Future<void> delete();
}
