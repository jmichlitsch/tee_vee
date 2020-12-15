require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test

  def test_show_exists
    knight_rider = Show.new("Knight Rider", "Glen Larson", [])
    assert_instance_of Show, knight_rider
  end

  def test_show_can_add_characters
    knight_rider = Show.new("Knight Rider", "Glen Larson", [])
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider.add_characters(kitt)
    knight_rider.add_characters(michael_knight)

    assert_equal knight_rider.characters, [kitt, michael_knight]
  end

  def test_show_can_total_salaries
    knight_rider = Show.new("Knight Rider", "Glen Larson", [])
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider.add_characters(kitt)
    knight_rider.add_characters(michael_knight)
    knight_rider.total_salary

    assert_equal knight_rider.total_salary, 2_600_000
  end

  def test_show_has_highest_paid_actor
    knight_rider = Show.new("Knight Rider", "Glen Larson", [])
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider.add_characters(kitt)
    knight_rider.add_characters(michael_knight)
    knight_rider.highest_paid_actor

    assert_equal knight_rider.highest_paid_actor, michael_knight
  end

  def test_show_can_see_actors
    knight_rider = Show.new("Knight Rider", "Glen Larson", [])
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    knight_rider.add_characters(kitt)
    knight_rider.add_characters(michael_knight)

    assert_equal knight_rider.actors, ["William Daniels", "David Hasselhoff"]
  end

end
