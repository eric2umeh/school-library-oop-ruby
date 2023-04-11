require_relative './nameable.rb'

class Decorator < Nameable
    def initialize(nameable)
        super()
        @nameable = nameable
    end

    attr_accessor :nameable

    def correct_name
        @nameable.correct_name
    end
end