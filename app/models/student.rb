class Student < ApplicationRecord
    belongs_to :course

    # value is a hash.
    def new_student(value)
        if !Course.exists? name: value[:course_name]
            Course.create(name: value[:course_name])
          end
      
          course_id = Course.find_by(name: value[:course_name])
          student.first_name = value[:first_name]
          student.second_name = value[:second_name]
          student.course = course_id
          self.save
    end
end
