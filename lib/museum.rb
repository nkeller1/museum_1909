require 'pry'

class Museum

  attr_reader :name, :exhibits, :patrons, :exhibit_interest

  def initialize(name)
    @name =  name
    @exhibits = []
    @patrons = []
    @exhibit_interest = Hash.new
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
      @exhibit_interest.select do |exhibit, patron|
        if exhibit && patron.interests == true
          exhibit_interest
        end
    end
  end

end
