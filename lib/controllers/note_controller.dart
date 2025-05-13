import 'package:flutter/foundation.dart';
import 'package:zzz/models/note.dart';

class NoteController extends ChangeNotifier {
  List<Note> notes = [];


  void addNote(Note note) {
    notes.add(note);
    notifyListeners();
  }

  void deleteNote(int index) {
    notes.removeAt(index);
    notifyListeners();
  }

  void editNote(int index, Note note) {
    notes[index] = note;
    notifyListeners();
  }

  void searchNote(String query) {
    notes = notes.where((note) => note.title.contains(query)).toList();
    notifyListeners();
  }

  
}
