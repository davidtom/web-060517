require 'pry'
class Student
  attr_accessor :course
  @@all = []
  def initialize(name)
    
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end

class Course

  attr_reader :name, :start_date

  def initialize(name, start_date)
    @name = name
    @start_date = start_date
  end

  def students
    Student.all.select do |student|
      student.course == self
    end
  end
end

class Teacher
  def initialize(name)

  end
  def students
    self.course.students
  end
end

Pry.start
