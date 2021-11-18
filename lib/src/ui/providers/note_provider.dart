import 'package:notespace/src/repositories/note_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notespace/src/models/note.dart';

final noteProvider = StateNotifierProvider<NoteRepository, List<Note>>((ref) {
  return NoteRepository();
});
