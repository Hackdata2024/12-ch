class Student {
  late String name;
  late String course;
  late String section;
  late String semester;
  late String roll_no;
  late int present_days;
  late int absent_days;
  late bool isPresent = false;
  Student(
      {required this.name,
      required this.course,
      required this.section,
      required this.semester,
      required this.roll_no,
      required bool isPresent,
      required this.present_days,
      required this.absent_days});
}

// List<Student> students_list = [
//   Student(
//     name: 'John Doe',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS101',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'John Doe',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS101',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'John Doe',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS101',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'John Doe',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS101',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'John Doe',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS101',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),
//   Student(
//     name: 'John Doe',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS101',
//   ),
//   Student(
//     name: 'Harsh',
//     course: 'Computer Science',
//     section: 'A',
//     semester: '1st',
//     isPresent: false,
//     roll_no: 'CS102',
//   ),

//   Student(
//     name: 'Jane Smith',
//     course: 'Electrical Engineering',
//     section: 'B',
//     semester: '2nd',
//     isPresent: false,
//     roll_no: 'EE201',
//   ),
//   Student(
//     name: 'Alice Johnson',
//     course: 'Mechanical Engineering',
//     section: 'C',
//     semester: '3rd',
//     isPresent: false,
//     roll_no: 'ME301',
//   ),
//   Student(
//     name: 'Bob Williams',
//     course: 'Civil',
//     section: 'D',
//     semester: '4th',
//     isPresent: false,
//     roll_no: 'PHD401',
//   ),
//   // Add more dummy data as needed
// ];
