class Student {
  late String name;
  late String course;
  late String section;
  late String semester;
  late String roll_no;
  Student(
      {required this.name,
      required this.course,
      required this.section,required this.semester,
      required this.roll_no});
}

List<Student> students_list = [
  Student(
    name: 'John Doe',
    course: 'Computer Science',
    section: 'A',
    semester: '1st',
    roll_no: 'CS101',
  ),
  Student(
    name: 'Jane Smith',
    course: 'Electrical Engineering',
    section: 'B',
     semester: '2nd',
    roll_no: 'EE201',
  ),
  Student(
    name: 'Alice Johnson',
    course: 'Mechanical Engineering',
    section: 'C',
     semester: '3rd',
    roll_no: 'ME301',
  ),
  Student(
    name: 'Bob Williams',
    course: 'Civil',
    section: 'D',
     semester: '4th',
    roll_no: 'PHD401',
  ),
  // Add more dummy data as needed
];
