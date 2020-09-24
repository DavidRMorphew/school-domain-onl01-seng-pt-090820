require 'pry'
class School

    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if @roster == {} || !@roster.keys.include?(grade)
            @roster[grade] = [name]
        else 
            @roster[grade]<<name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        @roster.each {|grade, names| names.sort!}
    end
end