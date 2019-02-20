require 'pry'

class School
  attr_reader :roster

  def initialize(name, roster={})
    @name=name
    @roster=roster
  end

  def add_student(name, grade)
    roster[grade]||= []
    roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    hash = roster.sort.to_h
    hash.each do |key, value|
      hash[key] = hash[key].sort
    end
  end


end
