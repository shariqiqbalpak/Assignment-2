class Student { 
   late String name; 
   late int age; 
   late String major; 
   late double gpa; 
  
   String getGradeLevel() { 
   int grade = age - 5; 
  return 'Grade $grade'; 
  } 
 } 
 void main() { 
 Student student = Student(); 
 student.name = 'John'; 
 student.age =20; 
 student.major='Law'; 
 student.gpa=3.5; 
  
 String gradeLevel= student.getGradeLevel(); 
  
   print('Student: ${student.name}'); 
   print('Age: ${student.age}'); 
   print('Major: ${student.major}'); 
   print('GPA: ${student.gpa}'); 
   print('Grade level: $gradeLevel'); 
 }