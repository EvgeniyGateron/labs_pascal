program lab_5_2_1_and_5_2_2;

uses sysutils, strutils, crt, DateUtils;

type
  
  student_type = 
  record
    group: string;
    fio: string;
    date: tdatetime;
    sex: boolean;
    pmark: byte;
    mmark: byte;
    imark: byte;
    scholarship: real;
  end;
  
  node = ^node_type;
  node_type = 
  record
    value: student_type;
    next: node
  end;
  
  list_type = 
  record
    head: node;
    tail: node;
    count: integer;
  end;

procedure insert(var list: list_type; item: student_type);
var
  tmp: node;
begin
  new(tmp);
  tmp^.value := item;
  tmp^.next := nil;
  if list.head = nil
    then list.head := tmp
  else list.tail^.next := tmp;
  list.tail := tmp;
end;

function student_type_to_str(item: student_type): string;
begin
  student_type_to_str := (
  format('%s %s %s %s %d %d %d %f', 
    [item.group, 
    item.fio, 
    datetostr(item.date),
    ifthen(item.sex, 'm', 'w'),
    item.pmark, 
    item.mmark, 
    item.imark, 
    item.scholarship]))
end;

function filter_students_by_age(list: list_type; filter: integer): list_type;
var
  tmp_list: list_type;
  tmp: node;
begin
  tmp := list.head;
  while tmp <> nil do
  begin
    if YearsBetween(date, tmp^.value.date) <= filter then begin
      insert(tmp_list, tmp^.value);
    end;
    tmp := tmp^.next
  end;
  filter_students_by_age := tmp_list;
end;

procedure display(list: list_type; table_name: string);
var
  tmp: node;
begin
  ClrScr();
  tmp := list.head;
  writeln('------------------------------------------------');
  writeln(table_name, ' students');
  writeln('------------------------------------------------');
  writeln('group fio date sex pmark mmark imark scholarship');
  writeln('------------------------------------------------');
  if tmp = nil then begin
    writeln('<empty>');
  end;
  while tmp <> nil do
  begin
    writeln(student_type_to_str(tmp^.value));
    tmp := tmp^.next
  end;
  writeln('------------------------------------------------');
end;

procedure init_student(
var student: student_type;
input_group: string;
input_fio: string;
input_date: tdatetime;
input_sex: boolean;
input_pmark: byte;
input_mmark: byte;
input_imark: byte;
input_scholarship: real);
begin
  student.group := input_group;
  student.fio := input_fio;
  student.date := input_date;
  student.sex := input_sex;
  student.pmark := input_pmark;
  student.mmark := input_mmark;
  student.imark := input_imark;
  student.scholarship := input_scholarship;
end;

label point;

var
  // linked list vars
  students: list_type;
  // tui
  command: string;
  age_filter: integer;
  // tmp record
  tmp_student_object: student_type;
  // tmp vars
  tmp_group_str: string;
  tmp_fio_str: string;
  tmp_sex_str: string;
  tmp_day: word;
  tmp_month: word;
  tmp_year: word;
  tmp_pmark: integer;
  tmp_mmark: integer;
  tmp_imark: integer;
  tmp_scholarship: real;

begin
  point:
  write('→ ');
  readln(command);
  
  case command of
    'add': 
      begin
        writeln('create student');
        write('group ');
        readln(tmp_group_str);
        write('fio ');
        readln(tmp_fio_str);
        write('day ');
        readln(tmp_day);
        write('month ');
        readln(tmp_month);
        write('year ');
        readln(tmp_year);
        write('sex m/w ');
        readln(tmp_sex_str);
        write('pmark ');
        readln(tmp_pmark);
        write('mmark ');
        readln(tmp_mmark);
        write('imark ');
        readln(tmp_imark);
        write('scholarship ');
        readln(tmp_scholarship);
        
        writeln('readed values');
        
        init_student(
        tmp_student_object, 
        tmp_group_str, 
        tmp_fio_str, 
        encodedate(tmp_year, tmp_month, tmp_day), 
        ansimatchstr(tmp_sex_str, ['m']), 
        tmp_pmark,
        tmp_mmark,
        tmp_imark,
        tmp_scholarship);
        writeln('created student: ', student_type_to_str(tmp_student_object));
        insert(students, tmp_student_object);
        display(students, 'non filtered');
      end;
    
    'age': 
      begin
        write('age_filter: ');
        read(age_filter);
        display(filter_students_by_age(students, age_filter), 'filtered');
      end;
    
    'display': 
      begin
        display(students, 'non filtered');
      end;
  
  end;
  
  goto point;
end.