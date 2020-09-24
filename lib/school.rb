require 'pry'
class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if !@roster.key?(grade)
            @roster[grade] = [name] 
        else 
            @roster[grade]<<name
        end
        # if @roster[grade]             # this asks if it exists and is not nil
        #   @roster[grade] << name      
        # else
        #   @roster[grade] = [name]
    end

    def grade(grade_level)
        @roster[grade_level]
    end

    def sort
        @roster.each {|grade, names| names.sort!}
    end
end