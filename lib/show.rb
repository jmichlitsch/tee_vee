class Show

  attr_accessor :characters
  attr_reader :name,
              :creator
  def initialize(name, creator, characters)
    @name = name
    @creator = creator
    @characters = []
  end

  def add_characters(characters)
    @characters.push(characters)
  end

  def total_salary
    @characters.sum do |character|
      character.salary
    end
  end

  def highest_paid_actor
    highest_paid = @characters.max_by do |character|
      character.salary
    end
  end

  def actors
    @characters.map do |character|
      character.actor
    end
  end
end