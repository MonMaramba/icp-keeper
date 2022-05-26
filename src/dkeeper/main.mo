// 
import List "mo:base/List";
import Debug "mo:base/Debug"
actor DKeeper {

// creating a data type accessible to JS 
 public type Note = {
    title: Text;
    content: Text;
  };

// List is a built in datatype in Motoko similar to an array
  var notes: List.List<Note> = List.nil<Note>();

// to receive javascript frontend notes
  public func createNote(titleText: Text, contentText: Text){

// creating the new note
    let newNote: Note = {
      title = titleText;
      content = contentText;
    };

// pushing by prepending into the List. Push is a List method
// to change the initial value of notes from it's empty creation
notes := List.push(newNote, notes);


  }
}