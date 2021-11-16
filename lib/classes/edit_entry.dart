import 'package:flutter/material.dart';
import 'package:on_the_go/classes/database.dart';
import 'package:intl/intl.dart';
import 'dart:math'; // Random() numbers

class EditEntry extends StatefulWidget {
  final bool add;
  final int index;
  final JournalEdit journalEdit;

  const EditEntry({ Key? key, required this.add, required this.index, required this.journalEdit })
      : super(key: key);




  @override
  _EditEntryState createState() => _EditEntryState();
}

class _EditEntryState extends State<EditEntry> {
  late JournalEdit _journalEdit;
  late String _title;
  late DateTime _selectedDate;
  TextEditingController _feelingController = TextEditingController();
  TextEditingController _noteController = TextEditingController();
  FocusNode _feelingFocus = FocusNode();
  FocusNode _noteFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _journalEdit = JournalEdit(action: 'Cancel', journal: widget.
    journalEdit.journal);
    _title = widget.add ? 'Add' : 'Edit';
    _journalEdit.journal = widget.journalEdit.journal;
    if (widget.add) {
      _selectedDate = DateTime.now();
      _feelingController.text = '';
      _noteController.text = '';
    } else {
      _selectedDate = DateTime.parse(_journalEdit.journal.date);
      _feelingController.text = _journalEdit.journal.feeling;
      _noteController.text = _journalEdit.journal.note;
    }
  }

  @override
  void dispose() {
    _feelingController.dispose();
    _noteController.dispose();
    _feelingFocus.dispose();
    _noteFocus.dispose();
    super.dispose();
  }

  // Date Picker
  Future<DateTime> _selectDate(DateTime selectedDate) async {
    DateTime _initialDate = selectedDate;
    final DateTime? _pickedDate = await showDatePicker(
      context: context,
      initialDate: _initialDate,
      firstDate: DateTime.now().subtract(Duration(days: 365)),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    if (_pickedDate != null) {
      selectedDate = DateTime(
          _pickedDate.year,
          _pickedDate.month,
          _pickedDate.day,
          _initialDate.hour,
          _initialDate.minute,
          _initialDate.second,
          _initialDate.millisecond,
          _initialDate.microsecond);
    }
    return selectedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
    title: Text('$_title Entry'),
    automaticallyImplyLeading: false,
    ),
    body: SafeArea(
    child: SingleChildScrollView(
    padding: EdgeInsets.all(16.0),
    child: Column(
    children: <Widget>[
  FlatButton(
  padding: EdgeInsets.all(0.0),
  child: Row(
  children: <Widget>[
  Icon(
  Icons.calendar_today,
  size: 22.0,
  color: Colors.black54,
  ),
  SizedBox(width: 16.0,),
  Text(DateFormat.yMMMEd().format(_selectedDate),
  style: TextStyle(
  color: Colors.black54,
  fontWeight: FontWeight.bold),
  ),
  Icon(
  Icons.arrow_drop_down,
  color: Colors.black54,
  ),
    ],
    ),
    onPressed: () async {
    FocusScope.of(context).requestFocus(FocusNode());
    DateTime _pickerDate = await _selectDate(_selectedDate);
    setState(() {
    _selectedDate = _pickerDate;
    });
    },
    ),
  TextField(
  controller: _feelingController,
  autofocus: true,
  textInputAction: TextInputAction.next,
  focusNode: _feelingFocus,
  textCapitalization: TextCapitalization.words,
  decoration: InputDecoration(
  labelText: 'Feeling',
  icon: Icon(Icons.mood),
  ),
    onSubmitted: (submitted) {
    FocusScope.of(context).requestFocus(_noteFocus);
    },
    ),

  TextField(
  controller: _noteController,
  textInputAction: TextInputAction.newline,
  focusNode: _noteFocus,
  textCapitalization: TextCapitalization.sentences,
  decoration: InputDecoration(
  labelText: 'Note',
  icon: Icon(Icons.subject),
  ),
  maxLines: null,
  ),
  Row(
  mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[
    FlatButton(
    child: Text('Cancel'),
    color: Colors.grey.shade100,
    onPressed: () {
    _journalEdit.action = 'Cancel';
    Navigator.pop(context, _journalEdit);
    },
    ),
    SizedBox(width: 8.0),
    FlatButton(
    child: Text('Save'),
    color: Colors.lightGreen.shade100,
    onPressed: () {
    _journalEdit.action = 'Save';
    String _id = widget.add ? Random().nextInt(9999999).toString() :
    _journalEdit.journal.id;
    _journalEdit.journal = Journal(
    id: _id,
    date: _selectedDate.toString(),
    feeling: _feelingController.text,
    note: _noteController.text,
    );
    Navigator.pop(context, _journalEdit);
    },
    ),
    ],
    ),

    ],
    ),
    ),
    ),
    );
  }
}
