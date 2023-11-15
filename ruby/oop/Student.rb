class Student
  attr_accessor :name, :major, :gpa
  @@students = []

  def initialize(name, major, gpa)
    @name = name
    @major = major
    @gpa = gpa
    
    self.class.students.push(self)
  end

  def has_honors
    return @gpa >= 3.5
  end

  def self.students
    return @@students
  end
end

student1 = Student.new("Leonardo", "Computer Science", 2.6)
student2 = Student.new("Jhou", "Computer Engineering", 3.2)
student2 = Student.new("Ayxa", "Environmental Awareness", 3.5)

all_students = Student.students

all_students.each do |student|
  if student.has_honors
    puts "Student:  #{student.name} has honors"
  else 
    puts "Student:  #{student.name} hasn't honors"
  end
end