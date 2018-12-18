require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")
 
puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
 
t1 = spongebob.add_boating_test("Don't Crash 101", "passed", puff)
t4 = spongebob.add_boating_test("test4", "passed", puff)

t2 = patrick.add_boating_test("Power Steering 202", "passed", puff)
t3 = patrick.add_boating_test("test3", "pending", krabs)
t5 = patrick.add_boating_test("test5", "failed", puff)
t6 = patrick.add_boating_test("test6", "passed", krabs)
t7 = patrick.add_boating_test("test7", "passed", krabs)

# BoatingTest.all

Student.find_student("Spongebob")

krabs.pass_student("test3", "Patrick")
krabs.fail_student("test8", "Patrick")

patrick.grade_percentage
spongebob.grade_percentage

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

