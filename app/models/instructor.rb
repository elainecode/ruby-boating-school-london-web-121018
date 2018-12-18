class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name 
    @@all << self
  end

 def self.all
  @@all
 end

  def pass_student(test_name, student_name)
    new_array = []
      BoatingTest.all.select do |test| 
      if test.name == test_name && test.student.name == student_name
        test.status = "passed"
        new_array << test
      end
     end
      new_array[0]
  end

    def fail_student(test_name, student_name)
    student_test = BoatingTest.all.find do |test| 
      test.name == test_name && test.student.name == student_name
     end
     if !student_test
         BoatingTest.new(Student.find_student(student_name), test_name, "failed", self)
     else
        return student_test
      end
    end

    end

