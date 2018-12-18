class Student

attr_accessor  :name

@@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
     BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(name)
    new_array = []
    Student.all.each do  |person|
     if person.name  == name 
        new_array << person
     end
    end 
    new_array[0]
  end

   def grade_percentage
    fail_count = 0 
    pass_count = 0 
    answer = 0
    student_tests = BoatingTest.all.select do |test|
       test.student == self
    end
    student_tests.each do |test|
      if test.status == "failed"
        fail_count += 1
      elsif test.status == "passed"
        pass_count += 1
      else
      pass_count += 0
      end 
    end
    return (pass_count.to_f / (pass_count + fail_count)) * 100
  end
 
end
