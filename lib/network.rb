class Network

  attr_accessor :shows
  attr_reader :name
  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(shows)
    @shows.push(shows)
  end

  def main_characters(shows)
  @shows.map do |show|
    show.characters
    end
  end

  def actors_by_show(show)
    @shows.map do |show|
      show.characters(1)
    end
  end

end
