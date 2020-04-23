# code here!
require 'pry'
class School
    attr_accessor :roster, :school, :student
    def initialize(school)
        @school = school
        @roster = Hash.new{|h,k| h[k]=[]}
    end 
    def add_student(student, grade)
        @roster[grade] << student
    end 
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.each do |grade, name|
            @roster[grade] = name.sort 
        end 
    end
end 