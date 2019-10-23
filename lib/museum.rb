require 'pry'

class Museum

  attr_reader :name, :exhibits, :patrons

  def initialize(name)
    @name =  name
    @exhibits = []
    @patrons = []
  end

  def add_exhibit(exhibit)
    exhibits << exhibit
  end

  def recommend_exhibits(patron)
    exhibits.find_all do |exhibit|
      if patron.interests.include?(exhibit.name) == true
        exhibit
      end
    end
  end

  def admit(patron)
    @patrons << patron
  end

  def patrons_by_exhibit_interest
    exhibit_interest = Hash.new
      exhibit_interest.map do |exhibit, patrons|
    end
  end

end
