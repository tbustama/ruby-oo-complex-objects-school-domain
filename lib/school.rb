class School
    attr_accessor :name
    attr_reader :roster

    def initialize(name)
        @name = name
        @roster = {}
    end
    

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
        hash = {}
        @roster.sort.each do |ele|
            hash[ele[0]] = ele[1].sort
        end
        hash
    end

end